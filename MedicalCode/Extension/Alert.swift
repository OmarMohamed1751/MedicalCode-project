//
//  Alert.swift
//  MedicalCode
//
//  Created by Omar on 12/26/18.
//  Copyright © 2018 Omar. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    // Alert
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
    //
}
