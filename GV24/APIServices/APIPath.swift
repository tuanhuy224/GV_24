//
//  APIPath.swift
//  GV24
//
//  Created by HuyNguyen on 6/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
enum urlPath:String {
    case getListAround = "/en/more/getTaskAround"
    case getListHome = "/vi/auth/maid/login"
//    case addManage = "/en/more/getTaskAround"
//    case listWaitting = "/en/more/getTaskAround"
//    case listInformation = "/en/more/getTaskAround"
//    case listHistory = "/en/more/getTaskAround"
}

struct APIPaths {
    let baseURL = "https://yukotest123.herokuapp.com/"
    
    func urlGetListProduct() -> String {
        return baseURL + urlPath.getListAround.rawValue
    }
    
//    func urlAddProductToCart() -> String {
//        return baseURL + urlPath.addManage.rawValue
//    }
//    
//    func urlLoveProduct() -> String {
//        return baseURL + urlPath.listInformation.rawValue
//    }
//    
//    func urlUnLoveProduct() -> String {
//        return baseURL + urlPath.listHistory.rawValue
//    }
    
 }
