//
//  LoginViewController.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/1.
//  Copyright © 2018年 wyc. All rights reserved.
//

import UIKit

class WYCLoginViewController: UIViewController {
    
    var isLogin = false
    
    
    @IBOutlet var account: UITextField!
    @IBOutlet var passwd: UITextField!
    
    @IBAction func touchLoginButton(_ sender: UIButton) {
        //print("\(account.text),\(passwd.text)")
        
        
        if account.text == "" || passwd.text == ""
        {
            alert(title: "错误",message: "请输入用户名和密码")
        }else
        {
            
            isLogin =  Verify(account: account.text!, passwd: passwd.text!)
            if !isLogin  {
                alert(title: "登陆失败",message: "请检查用户名和密码")
                
            }else{
                
                alert(title: "登陆成功",message: "")
                //
                //                let classbookvc = WYCClassBookViewController()
                //                 let uisegue = UIStoryboardSegue(identifier: "bflogin", source: self, destination: classbookvc)
                //                //classbookvc.view.addSubview(classbookvc.after)
                //                self.prepare(for: uisegue, sender: isLogin)
                //                //self.present(classbookvc, animated: true, completion: nil)
                //                self.show(classbookvc, sender: nil)
                
            }
        }
        
    }
    
    func alert(title:String, message:String) {
        let alertController = UIAlertController(title: title,message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "好的", style: .default,handler: {action in print("点击了确定")}
            
        )
        
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
