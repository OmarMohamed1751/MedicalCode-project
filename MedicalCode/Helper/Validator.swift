//
//  Validator.swift
//  MedicalCode
//
//  Created by Omar on 1/1/19.
//  Copyright © 2019 Mine. All rights reserved.
//

import UIKit

class Validator: NSObject {
    
    // firstname validation
    class func isValidFirstname(testStr: String) -> Bool {
        let firstNameRegex = "^[A-Za-z0-9_-]{3,10}$"
        let firstNameTest = NSPredicate(format:"SELF MATCHES %@", firstNameRegex)
        return firstNameTest.evaluate(with: testStr)
    }
    //...
    
    // nickname validation
    class func isValidNickName(testStr: String) -> Bool {
        let nickNameRegex = "^[A-Za-z0-9_-]{3,10}$"
        let nickNameTest = NSPredicate(format:"SELF MATCHES %@", nickNameRegex)
        return nickNameTest.evaluate(with: testStr)
    }
    //...
    
    // E-mail validation
    class func isValidEmail(testStr: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    //...
    
    //contact number validation
    class func isVaildPhone(testStr: String) -> Bool {
        let phoneRegEx = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
        return phoneTest.evaluate(with: testStr)
    }
    //...
    
    // Password validation
    class func isValidPassword(testStr: String) -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: testStr)
    }
    //...
    
    // choosing at least one field validation
   static func isOneFieldSelected(speciality: String?, city: String?, region: String?, company: String?) -> Bool {
        guard !(speciality?.isEmpty)! || !(city?.isEmpty)! || !(region?.isEmpty)! || !(company?.isEmpty)! else {
            return false
        }
        return true
    }
    
    static func getDoctorName(doctorName: String?) -> String {
        if let doctorName = doctorName, !doctorName.isEmpty, doctorName != "اسم الدكتور" {
            return doctorName
        }
        return "0"
    }
    //...
}
