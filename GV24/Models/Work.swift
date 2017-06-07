//
//  Work.swift
//  GV24
//
//  Created by HuyNguyen on 5/27/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import SwiftyJSON

class Work: AppModel {
    var id:String?
    var history:[String:Any]?
    var stakeholders:[String:Any]?
    var info:Info?
    override init(json:JSON) {
        super.init()
        self.id = json["_id"].string
        self.history = json["history"].dictionary
        self.stakeholders = json["stakeholders"].dictionary
        self.info = Info(json: json["info"])
    }
}
