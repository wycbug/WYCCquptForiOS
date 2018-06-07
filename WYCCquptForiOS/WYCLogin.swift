//
//  WYCLogin.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/1.
//  Copyright © 2018年 wyc. All rights reserved.
//

import Foundation
import SwiftyJSON
import RealmSwift


func Verify(account:String, passwd:String) -> Bool {
    
    let veriftInformation = "stuNum=\(account)&idNum=\(passwd)"
    let login = BaseNetwrok()
    login.post(url: "https://wx.idsbllp.cn/api/verify", params: veriftInformation)

    sleep(1)
    let getjson = login.jsondecoder
    //let getstatus = getjson["status"]
    
    //print("login:\(login.jsondecoder)")
    if getjson["status"] != 200{
        return false
    }else{
        let realm = try! Realm()
        let nowDataBase = realm.objects(UserInformation.self).first
        //print("-\(nowDataBase)")
        if nowDataBase == nil{
            saveData(jsonToSave: getjson)
        }
        
        return true
    }
}

class UserInformation: Object {
    @objc dynamic var UserName = ""
    @objc dynamic var stuNum = ""
    @objc dynamic var classNum = ""
    @objc dynamic var  gender = ""
    @objc dynamic var idNum = ""
    @objc dynamic var major = ""
    @objc dynamic var grade = ""
    @objc dynamic var college = ""
   
}

func saveData(jsonToSave:JSON) {
    let data = jsonToSave["data"]
    let save = UserInformation()
    save.UserName = data["name"].stringValue
    save.classNum = data["classNum"].stringValue
    save.stuNum = data["stuNum"].stringValue
    save.gender = data["gender"].stringValue
    save.major = data["major"].stringValue
    save.grade = data["grade"].stringValue
    save.idNum = data["idNum"].stringValue
    save.college = data["college"].stringValue
    let realm = try! Realm()
    try! realm.write {
        realm.add(save)
    }
    print(realm.configuration.fileURL!)
}
/*"stuNum": "2017210129",
"name": "王一成",
"college": "通信与信息工程学院",
"class": "01141701班",
"classNum": "01141701",
"gender": "男",
"major": "0114",
"grade": "2017",
"idNum": "034214"
*/
