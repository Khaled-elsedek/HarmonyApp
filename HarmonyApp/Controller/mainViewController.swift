//
//  mainViewController.swift
//  HarmonyApp
//
//  Created by Khaled on 8/18/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit
import Cosmos
import fluid_slider
import SideMenu

class mainViewController: UIViewController {
    @IBOutlet weak var filterView: UIView!
    
    @IBOutlet weak var ratingCosmos: CosmosView!
    var filterState:Bool = false
    var filterSateCounter = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ratingCosmos.rating = 2.5
        ratingCosmos.settings.fillMode = .precise
        ratingCosmos.didFinishTouchingCosmos = {
            rating in
            self.filterSateCounter = rating
            print(self.filterSateCounter)
        }
    }
    @IBAction func filterBtnWasBressed(_ sender: Any) {
        filterstate()
    }
    @IBAction func sideMenuBtnWasPressed(_ sender: Any) {
        sideMenu()
    }
    @IBAction func saveFilterOptionBtnWasPressed(_ sender: Any) {
        filterstate()
    }
    @IBAction func cancelFilterBtnWasPressed(_ sender: Any) {
        filterstate()
    }
    func sideMenu() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "sideMenu") else { return }
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: vc)
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        SideMenuManager.default.menuFadeStatusBar = false
        
    }

    func filterstate(){
        if filterState == false {
            filterState = true
            navigationController?.navigationBar.isHidden = true
            filterView.isHidden = false
            
        } else {
            filterState = false
            navigationController?.navigationBar.isHidden = false
            filterView.isHidden = true
        }
    }
}
