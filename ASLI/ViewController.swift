//
//  ViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/13/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sideMenuConstrait: NSLayoutConstraint!
    
    var sideMenuOpen = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func toggleSideMenu(){
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstrait.constant = -240
        } else {
            sideMenuOpen = true
            sideMenuConstrait.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }


}

