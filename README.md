# WYCCquptForiOS
半期考核感觉写的太菜了，重写一遍，想分步尽量实现功能吧
用的swift，试试这个语言，感觉比oc方便啊（我oc太菜了）
-------
导入的reamlswift框架太大了，没上传成功，只传了代码，reamlswift的GitHub地址：https://github.com/realm/realm-cocoa/
-------
## 功能：
* 登陆界面出入账号后能判断登陆成功没有，弹出提示框
* 登陆成功后会把获取的用户信息存到数据库里（如果数据库里没有数据的话）
* 单独写的一个getClassBookData，能解析出每周的数据按照星期存储
* 尽量用了MVC
## 下一步实现的功能
* 课程数据存到数据库里，用的时候直接按条件匹配调出对应周的数据
* 用一个界面实现课表的显示，包括等选周（可能用一个uipickerview实现选周吧），像掌上重邮里那种点击后多现实一条选周信息的不知道怎么弄得
* 每个块都是能点击的，点击后显示详细信息
## 问题
* 界面跳转，因为是用storyboard做的界面，一开始显示的是课表懵逼那个图，点击后进入登录界面，登录成功后不知道怎么跳到另一个界面用来显示课表，并且这个界面还是在UITabBarController的第一个item上
* 显示课表的界面，每个块都是一个同样的结构体，根据显示的要求初始化，这个用MVC怎么实现比较晕
* UITabBarController显示的图标现在是用storyboard里属性设置直接设置的图标，但是尺寸不对，不知道怎么缩小
-------
附上GIF：
![image](https://github.com/wycbug/WYCCquptForiOS/blob/master/Untitled.gif ) 



