//
//  SignupVC.swift
//  MedicalCode
//
//  Created by Omar on 12/25/18.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {
    
    
    @IBOutlet weak var firstName_TF: UITextField!
    
    @IBOutlet weak var nickname_TF: UITextField!
    
    @IBOutlet weak var phoneNumber_TF: UITextField!
    
    @IBOutlet weak var email_TF: UITextField!
    
    @IBOutlet weak var password_TF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "التسجيل"
        self.addCustomBackButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    fileprivate func logIn() {
//        let  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "") as!
//        self.navigationController?.pushViewController(, animated: true)
//    }
    

    @IBAction func register_btn(_ sender: UIButton) {
        
        // validating first name
        guard Validator.isValidFirstname(testStr: firstName_TF.text!) else{
            firstName_TF.becomeFirstResponder()
            showAlert(title: "Error!", message: "Unvalid Firstname")
            firstName_TF.text = ""
            return
        }
        //...
        
        // validating nickname
        guard Validator.isValidNickName(testStr: nickname_TF.text!) else{
            nickname_TF.becomeFirstResponder()
            showAlert(title: "Error!", message: "Unvalid Nickname")
            nickname_TF.text = ""
            return
        }
        //...
        
        //validating phone number
        guard Validator.isVaildPhone(testStr: phoneNumber_TF.text!) else{
            phoneNumber_TF.becomeFirstResponder()
            showAlert(title: "Error!", message: "Unvalid Phone Number")
            phoneNumber_TF.text = ""
            return
        }
        //...
        
        //validating email
        guard Validator.isValidEmail(testStr: email_TF.text!) else {
            email_TF.becomeFirstResponder()
            showAlert(title: "Error!", message: "Unvalid E-Mail")
            email_TF.text = ""
            return
        }
        //...
        
        //validating password
        guard Validator.isValidPassword(testStr: password_TF.text!)else{
            password_TF.becomeFirstResponder()
            showAlert(title: "Error!", message: "Unvalid Password")
            password_TF.text = ""
            return
        }
        //
        
        //logIn()
    }
    
    

}
