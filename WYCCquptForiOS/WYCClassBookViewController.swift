//
//  WYCClassBookViewController.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/1.
//  Copyright © 2018年 wyc. All rights reserved.
//

import UIKit

class WYCClassBookViewController: UIViewController {

    @IBOutlet var before: UIView!
    @IBOutlet var after: UIView!
    
   
   
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        let afterView = UIView()
        let beforeView = UIView()
        
        let backgroundBarImage = UIImageView(image: #imageLiteral(resourceName: "底板.png"))
        backgroundBarImage.sizeToFit()
        backgroundBarImage.frame = CGRect(x: 0, y: 0, width: 375, height: 65)
        afterView.addSubview(backgroundBarImage)
        

        let login = WYCLoginViewController()
        if login.isLogin {
            self.view.addSubview(afterView)
        }else{
            self.view.addSubview(beforeView)
        }
        
        
        
        
        //self.view.addSubview(after)
        
        
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    
//    override func prepare(for segue: , sender: Any?) {
////        Get the new view controller using segue.destinationViewController.
////        Pass the selected object to the new view controller.
//        self.after
//      
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
