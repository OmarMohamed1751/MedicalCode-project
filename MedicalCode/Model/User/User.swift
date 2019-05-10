//
//  User.swift
//  MedicalCode
//
//  Created by Omar on 12/26/18.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var firstName: String
    var nickname: String
    var email: String
    var phoneNumber: String
    var password: String
    
    init(firstName: String, nickname: String, email: String, phoneNumber: String, password: String) {
        self.firstName = firstName
        self.nickname = nickname
        self.email = email
        self.phoneNumber = phoneNumber
        self.password = password
    }
}
