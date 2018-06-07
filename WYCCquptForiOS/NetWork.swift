//
//  NetWork.swift
//  WYCCquptForiOS
//
//  Created by 王一成 on 2018/6/2.
//  Copyright © 2018年 wyc. All rights reserved.
//

import Foundation
import SwiftyJSON





/// 网络访问基类
class BaseNetwrok: NSObject {
    
    //var jsonResult = Data()
    var jsondecoder = JSON()
    
    
    /// 获取post内容
    ///
    /// - Parameter params: 参数
    /// - Returns: Body
//    func getBody(params:NSMutableDictionary) -> String {
//        
//        var body = "";
//        
//        for (key, value) in params {
//            
//            let str = "\(key)=\(value)&"
//            
//            body = body + str
//        }
//        
//        return body
//    }
//    
    
    /// Post 访问
    ///
    /// - Parameters:
    ///   - url: 服务器链接
    ///   - params: POST参数
    func post(url:String, params:String){
    
        
        //创建会话对象
        let session     = URLSession.shared
        let serUrl      = URL(string:url)
        var request     = URLRequest(url: serUrl!)
        
        //设置访问方式为POST
        request.httpMethod = "POST"
        
        //设置POST 内容
        request.httpBody = params.data(using: String.Encoding.utf8)
        
       
        //开始访问
        let dataTask : URLSessionDataTask = session.dataTask(with: request) { (data, respones, error)  -> Void  in
           
            //访问结束
            if(error != nil) {
                //返回出错
                print(error.debugDescription)
                
            } else {
                
                do {
                    try self.jsondecoder = JSON(data: data!)
                } catch {}
                //print("decoderjson:\(self.jsondecoder)")
            }
            
        }
        dataTask.resume()
        
        
       
    }
    
//    func decoderjson()
//    {
//        do {
//            try self.jsondecoder = JSON(data: self.jsonResult)
//        } catch {}
//        print("decoderjson:\(self.jsonResult)")
//    }
//    func savedata(savedata:Data) {
//        self.jsonResult = savedata
//    }
    
//    func getData() -> JSON {
//       return self.jsonResult
//    }
//
    
}
