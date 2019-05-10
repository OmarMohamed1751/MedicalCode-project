//
//  TabBarVC.swift
//  MedicalCode
//
//  Created by Omar on 12/20/18.
//  Copyright © 2018 Mine. All rights reserved.
//

import Foundation
import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewControllers()
        
        // color of the bar
        self.tabBar.barTintColor = UIColor.mainColor
        // color of the bar items
        self.tabBar.tintColor = UIColor(red: 133/255, green:  205/255, blue: 65/255, alpha: 1)
        // color of the unselected bar item
        self.tabBar.unselectedItemTintColor = UIColor.white
        
        self.selectedIndex = 2
        
    }
    
    
    func selectTab(tabIndex:Int){
        self.selectedIndex = tabIndex
    }



    func selectFavoritesTab(){
        self.selectTab(tabIndex: 1)
    }

    func selectAppointmentsTab(){
        self.selectTab(tabIndex: 2)
    }
    
    
    
    let searchNavigation = UINavigationController()
    let favoritesNavigation = UINavigationController()
    let appointmentsNavigation = UINavigationController()
    
    func setSearchTab() {
        let searchVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchVC") as! SearchVC
        searchVC.tabBarItem = UITabBarItem(title: "بحث", image: UIImage(named: "icBottomMenuSearch"), tag: 2)
        searchNavigation.viewControllers = [searchVC]
    }
    
    func setFavoritesTab() {
        let favoritesVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FavoritesVC") as! FavoritesVC
        favoritesVC.tabBarItem = UITabBarItem(title: "المفضلة", image: UIImage(named: "icBottomMenuMyFavorites"), tag: 1)
        favoritesNavigation.viewControllers = [favoritesVC]
    }
    
    func setAppointmentsTab() {
        let appointmentsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AppointmentsVC") as! AppointmentsVC
        appointmentsVC.tabBarItem = UITabBarItem(title: "مواعيدي", image: UIImage(named: "icBottomMenuAppointments"), tag: 0)
        appointmentsNavigation.viewControllers = [appointmentsVC]
    }
    
    func setViewControllers() {
        
        self.setSearchTab()
        self.setFavoritesTab()
        self.setAppointmentsTab()
        
        self.viewControllers = [appointmentsNavigation, favoritesNavigation, searchNavigation]
    }
    
}

