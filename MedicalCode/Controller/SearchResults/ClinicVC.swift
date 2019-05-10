//
//  ClinicVC.swift
//  MedicalCode
//
//  Created by Omar on 1/13/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import UIKit
import MarqueeLabel
import Cosmos
import SDWebImage

class ClinicVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var clinicId: Int!
    
    @IBOutlet weak var doctorImg: UIImageView!
    @IBOutlet weak var doctorName_lbl: MarqueeLabel!
    @IBOutlet weak var rate_view: CosmosView!
    @IBOutlet weak var description_lbl: MarqueeLabel!
    @IBOutlet weak var speciality_lbl: MarqueeLabel!
    @IBOutlet weak var day_lbl: UILabel!
    
    @IBOutlet weak var specialityLbl: MarqueeLabel!
    @IBOutlet weak var waitingTime_lbl: UILabel!
    @IBOutlet weak var fees_lbl: UILabel!
    @IBOutlet weak var location_lbl: MarqueeLabel!
    
    
    @IBOutlet weak var appointments_collectionView: UICollectionView!
    
    
    @IBOutlet weak var doctorFileDetails: UIView!
    @IBOutlet weak var doctorReviewsDeatails: UIView!
    
    @IBOutlet weak var doctorfileOutlet: UIButton!
    @IBOutlet weak var doctorReviewOutlet: UIButton!
    
    fileprivate var cellIdentifier = "AppointmentsCollectionViewCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpView()
        self.navigationItem.title = "العيادة"
        
        appointments_collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        appointments_collectionView.delegate = self
        appointments_collectionView.dataSource = self
        
        doctorfileOutlet.backgroundColor = UIColor.white
        doctorfileOutlet.setTitleColor(.black, for: .normal)
    }
    
    // MARK: - setUpView Functions
    private func setUpView(){
        self.addSettingsBtn()
        self.addCustomBackButton()
        self.doctorDetails()
        self.doctorImg.setRounded(border: true)
    }
    //...
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - doctor details
    func doctorDetails(){
        APIManager.getClinicInfo(clinicId: clinicId) { (error, doctorDetails) in
            if let error = error {
                self.showAlert(title: "error", message: error)
            } else if let doctorDetails = doctorDetails {
                print(doctorDetails.doctorFullNameA)
                
                let url = doctorDetails.doctorImageUrl?.replacingOccurrences(of: "~", with: URLs.mainImg)
                self.doctorImg.sd_setImage(with: URL(string: url!), placeholderImage: UIImage(named : "doctor-placeholder"))
                self.doctorName_lbl.text = doctorDetails.doctorFullNameA
                self.rate_view.rating = Double(doctorDetails.reviewScore!)
                self.description_lbl.text = doctorDetails.docotrTitleA
                self.speciality_lbl.text = doctorDetails.doctorDescriptionA
                
                self.specialityLbl.text = doctorDetails.doctorDescriptionA
                self.waitingTime_lbl.text = "\(doctorDetails.waitingTime ?? 0)" + " دقيقة"
                self.fees_lbl.text = "\(doctorDetails.fees ?? 0)" + " جنيه  "
                self.location_lbl.text = doctorDetails.addressA
            }
        }
    }
    //...
    
    
    // MARK: - marqueeLable problem solving
    func restartMarqueeLabels() {
        if let doctorNameLabel = self.doctorName_lbl, let doctorTitlelabel = self.description_lbl, let subSpecialistyLabel = self.specialityLbl, let addressLabel = self.location_lbl, let specialityLable = self.speciality_lbl, let locatonLabel = self.location_lbl {
            let marqueeLabels = [doctorNameLabel, doctorTitlelabel, subSpecialistyLabel, addressLabel, specialityLable, locatonLabel]
            for label in marqueeLabels {
                label.type = .continuousReverse
                label.speed = .duration(28)
                label.restartLabel()
            }
        }
    }
    //...
    
    
    @IBAction func doctorFile_btn(_ sender: UIButton) {
        self.doctorFileDetails.isHidden = false
        self.doctorReviewsDeatails.isHidden = true
        self.doctorReviewOutlet.backgroundColor = UIColor(red: 216/255, green: 232/255, blue: 194/255, alpha: 1)
        self.doctorfileOutlet.backgroundColor = UIColor.white
        self.doctorfileOutlet.setTitleColor(.black, for: .normal)
        self.doctorReviewOutlet.setTitleColor(.white, for: .normal)
    }
    
    
    @IBAction func doctorReviews_btn(_ sender: UIButton) {
        self.doctorFileDetails.isHidden = true
        self.doctorReviewsDeatails.isHidden = false
        self.doctorfileOutlet.backgroundColor = UIColor(red: 216/255, green: 232/255, blue: 194/255, alpha: 1)
        self.doctorReviewOutlet.backgroundColor = UIColor.white
        self.doctorReviewOutlet.setTitleColor(.black, for: .normal)
        self.doctorfileOutlet.setTitleColor(.white, for: .normal)
    }
}

// MARK: - Appointment collectionView
extension ClinicVC{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = appointments_collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! AppointmentsCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (appointments_collectionView.bounds.width - 30) / 3
        return CGSize.init(width: width , height: 30)
    }
}
//...
