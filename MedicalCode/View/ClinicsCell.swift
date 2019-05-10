//
//  ClinicsCell.swift
//  Esptalia-iOS
//
//  Created by Omar on 6/29/18.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit
import Cosmos
import MarqueeLabel
import SDWebImage

protocol bookNowOfClinicCellDelegate: class {
    func clickOnBookNow(clinicId: Int)
}

class ClinicsCell: UITableViewCell {
    
    weak var delegate: bookNowOfClinicCellDelegate?
    
    @IBOutlet weak var doctorImageView: UIImageView!
    @IBOutlet weak var doctorName_lbl: MarqueeLabel!
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var doctorTitle_lbl: MarqueeLabel!
    @IBOutlet weak var reviews_lbl: UILabel!
    @IBOutlet weak var subSpecialisties_lb: MarqueeLabel!
    @IBOutlet weak var waitingTime_lbl: UILabel!
    @IBOutlet weak var bookNow_btn: UIButton!
    @IBOutlet weak var examinationFees_lbl: UILabel!
    @IBOutlet weak var afterDiscount_lbl: UILabel!
    @IBOutlet weak var address_lbl: MarqueeLabel!
    @IBOutlet weak var addToFavoritesImageView: UIImageView!
    @IBOutlet weak var removeFromFavoritesImageView: UIImageView!
    @IBOutlet weak var feesAfterDiscountIcon: UIImageView!
    @IBOutlet weak var subSpecialistiesImageView: UIImageView!
    
    
    var doctor: Clinic!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.clear
        self.isOpaque = false
        doctorImageView.setRounded(border: true)
        ratingView.settings.updateOnTouch = false
        self.restartMarqueeLabels()
        
        
    }
    
    // marqueeLable problem solving
    func restartMarqueeLabels() {
        if let doctorNameLabel = self.doctorName_lbl, let doctorTitlelabel = self.doctorTitle_lbl, let subSpecialistyLabel = self.subSpecialisties_lb, let addressLabel = self.address_lbl {
            let marqueeLabels = [doctorNameLabel, doctorTitlelabel, subSpecialistyLabel, addressLabel]
            for label in marqueeLabels {
                label.type = .continuousReverse
                label.speed = .duration(28)
                label.restartLabel()
            }
        }
    }
    //...
    
    func configureCell(doctor: Clinic) {
        self.doctor = doctor
        let url = self.doctor.doctorImageUrl?.replacingOccurrences(of: "~", with: URLs.mainImg)
        self.doctorImageView.sd_setImage(with: URL(string: url!), placeholderImage: UIImage(named : "doctor-placeholder"))
        self.doctorName_lbl.text = doctor.doctorFullNameA
        self.ratingView.rating = Double(doctor.reviewScore!)
        self.reviews_lbl.text = "\(doctor.noOfReviews ?? 0)"
        self.doctorTitle_lbl.text = doctor.docotrTitleA
        self.subSpecialisties_lb.text = doctor.doctorDescriptionA
        self.address_lbl.text = doctor.addressA
        self.waitingTime_lbl.text = "\(doctor.waitingTime ?? 0)" + " دقيقة"
        self.examinationFees_lbl.text = "\(doctor.fees ?? 0)" + " جنيه  "
        self.afterDiscount_lbl.text = "\(doctor.feesAfterDiscount ?? 0)" + "جنيه  "
    }
    
    
    @IBAction func favorite_btn(_ sender: UIButton) {
        addToFavoritesImageView.image = UIImage(named: "icFavoriteClicked")
    }
    
    
    @IBAction func bookNow_btn(_ sender: UIButton) {
        guard let clinicId = self.doctor.clinicId else {return}
        self.delegate?.clickOnBookNow(clinicId: clinicId)
    }
    
}
