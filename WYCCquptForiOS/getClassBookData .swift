//
//  getClassBookData.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/3.
//  Copyright © 2018年 wyc. All rights reserved.
//

import Foundation
import SwiftyJSON
class getClassBookData: NSObject {
    
    var  data  = JSON()
    var classbookSeparateByWeek  = [[JSON().dictionaryValue]]
    var nowWeek = 0
    
    
    
    func getjson(stu_num:String){
        
        let net = BaseNetwrok()
        
        
        
        net.post(url: "https://wx.idsbllp.cn/api/kebiao", params: "stu_num=\(stu_num)")
        sleep(1)
        let jsonReturn = net.jsondecoder
        
        if jsonReturn["status"] == 200 {
            //print("\(jsonReturn)")
            getClassBook(json: jsonReturn)
        }
        
    }
    
    func getClassBook(json:JSON){
        self.nowWeek = json["nowWeek"].intValue
        //print("当前周:\(nowWeek)")
        self.data = json["data"]
        
        
    }
    func separateWeek(allData:JSON)  {
        for _ in 1...25{
            let temp = [JSON().dictionaryValue]
            classbookSeparateByWeek += [temp]
        }
        
        for index in 1...allData.count {
            //print(allData[index-1]["week"])
            let a:Array = allData[index-1]["week"].arrayValue
            
            
            
            for index2 in 1...a.count {
                //print("\(a[index-1])--")
                for weeknum in 1...25{
                    
                    if a[index2-1].intValue == weeknum{
                        //print(a[index2-1].intValue)
                        classbookSeparateByWeek[weeknum] += [allData[index-1].dictionaryValue]
                    }
                }
            }
            
        }
        
    }
    
    
}
