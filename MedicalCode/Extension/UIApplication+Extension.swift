//
//  UIApplication+Extension.swift
//  MedicalCode
//
//  Created by Omar on 12/16/18.
//  Copyright © 2018 Mine. All rights reserved.
//

import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}
