//UserDefaultHelper
//  GV24
//
//  Created by HuyNguyen on 5/25/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import UIKit

enum GlobalConstants {
    
    static let englishCode = "en"
    static let finnishLangCode = "vi"
}

class UserDefaultHelper {
    var key = "userLogin"
    
    static var isLogin : Bool{
        if UserDefaults.standard.value(forKey: "token") != nil{
            return true
        }
        return false
    }
    static func setSlider(slider:String){
    UserDefaults.standard.set(slider, forKey: "slider")
    UserDefaults.standard.synchronize()
    }
    static func getSlider() -> String?{
    return UserDefaults.standard.value(forKey: "slider") as? String
    }
    static func setUserDefault(token:String, user:User?){
        let dic = [
                    "idUser":user!.id!,
                    "userName":user!.username!,
                   "email":user!.email!,
                   "phone":user!.phone!,
                   "avatarUrl": user!.image!,
                   "addressName":(user?.address?.name)!,
                   "gender":user!.gender!,
                    "lat":(user?.address?.location?.latitude)!,
                    "lng":(user?.address?.location?.longitude)!,
                    "lat1":(user?.address?.location?.latitude)!,
                    "lng1":(user?.address?.location?.longitude)!
                   ] as Dictionary<String, Any>
        UserDefaults.standard.set(dic, forKey: "user")
        UserDefaults.standard.set(token, forKey: "token")
        UserDefaults.standard.synchronize()
    }
    class func getToken() -> String? {
        return UserDefaults.standard.object(forKey: "token") as? String
    }
    static var currentUser : User? {
            if isLogin {
                let userDic = UserDefaults.standard.value(forKey: "user") as! Dictionary<String, Any>
                let user = User()
                user.id = userDic["idUser"] as? String
                user.username = userDic["userName"] as? String
                user.email = userDic["email"] as? String
                user.phone = userDic["phone"] as? String
                user.image = userDic["avatarUrl"] as? String
                let address = Address()
                address.name = userDic["addressName"] as? String
                user.lat1 = (userDic["lat1"] as? Double)!
                user.lng1 = (userDic["lng1"] as? Double)!
                user.gender = userDic["gender"] as? Int
                return user
            }
            return nil
    }
    static func setUserOwner(user:Owner?){
        let dic = [
            "idOwner":user!.id as Any,
            "username":user!.username as Any,
            "email":user?.image as Any,
            "phone":user!.phone as Any,
            "image": user?.email as Any,
            "addressName":(user?.address?.name)! as Any,
            "gender":user!.gender as Any
            ] as Dictionary<String, Any>
        UserDefaults.standard.set(dic, forKey: "userOwner")
        UserDefaults.standard.synchronize()
    }
    static var ownerUser : Owner? {
            let userDic = UserDefaults.standard.value(forKey: "userOwner") as! Dictionary<String, Any>
            let user = Owner()
            user.id = userDic["idOwner"] as? String
            user.username = userDic["username"] as? String
            user.email = userDic["email"] as? String
            user.phone = userDic["phone"] as? String
            user.image = userDic["image"] as? String
            let address = Address()
            address.name = userDic["addressName"] as? String
            user.address = address
            user.gender = userDic["gender"] as? Int
            return self.ownerUser
    }

}
