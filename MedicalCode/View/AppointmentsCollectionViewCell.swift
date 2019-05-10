//
//  MyCustomCollectionViewCell.swift
//  MedicalCode
//
//  Created by Omar on 1/14/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import UIKit

class AppointmentsCollectionViewCell: UICollectionViewCell {
    
    
   
    @IBOutlet weak var appointment_lbl: UILabel!
    
    var appointments: Appointment!
    

    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    func configureCell(appointment: Appointment) {
        self.appointments = appointment
        
        self.appointment_lbl.text = appointments.fromTime
        
        
    }

}
