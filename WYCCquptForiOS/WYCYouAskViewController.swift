//
//  WYCYouAskViewController.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/3.
//  Copyright © 2018年 wyc. All rights reserved.
//

import UIKit
import RealmSwift

class WYCYouAskViewController: UIViewController {

    @IBAction func test(_ sender: UIButton) {
        //let UserName = UserInformation()
        
        let realm = try! Realm()
        let Me = realm.objects(UserInformation.self).first
//        try! realm.write {
//            theDog!.age = 3
//        }
        if Me != nil {
            print("--\(Me!.classNum)")
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //let realm = try! Realm()
        
        
      
//        try! realm.write {
//            theDog!.age = 3
//        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
