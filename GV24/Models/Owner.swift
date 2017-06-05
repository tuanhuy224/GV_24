//
//  Owner.swift
//  GV24
//
//  Created by HuyNguyen on 6/3/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import SwiftyJSON

class Owner: AppModel {
    var id:String?
    var username:String?
    var phone:String?
    var email:String?
    var image:String?
    var gender:Int?
    var name:String?
    var lat:Double?
    var lng:Double?
    var info:Info?
    var address:Address?
    
    override init(){
        super.init()
    }
    override init(json:JSON?) {
        super.init()
        self.id = json?["_id"].string
        self.username = json?["info"]["username"].string
        self.phone = json?["info"]["phone"].string
        self.image = json?["info"]["image"].string
        self.gender = json?["info"]["gender"].int
        self.email = json?["info"]["email"].string
//        guard let address = json?["info"]["address"] else {return}
//        self.address?.name = address["name"].string
        self.address = Address(json:(json?["info"]["address"])!) as? Address
        guard let coorddinates = json?["info"]["address"]["coorddinates"] else { return}
            self.lat = coorddinates["lat"].double
            self.lng = coorddinates["lng"].double
    }
}
