//
//  MainVC.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/14/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showExercises),
                                               name: NSNotification.Name("ShowExercises"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showProfile),
                                               name: NSNotification.Name("ShowProfile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)
    
    }
    
    @objc func showExercises(){
        performSegue(withIdentifier: "ShowExercises", sender: nil)
    }
    @objc func showProfile(){
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    @objc func showSettings(){
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    @IBAction func onMoreTapped(){
    
    NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
