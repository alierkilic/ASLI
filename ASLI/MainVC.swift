//
//  MainVC.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/14/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor.black
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
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showLikedExercises),
                                               name: NSNotification.Name("ShowLikedExercises"),
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
    @objc func showLikedExercises(){
        performSegue(withIdentifier: "ShowLikedExercises", sender: nil)
    }
    @IBAction func onMoreTapped(){
    
    NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
