//
//  DetailViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/25/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ExerciseDetailVC: UIViewController {

    //var moves = [Movement]()
    var getname = String()
    var getImage = UIImage()
    
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgImage.image = getImage
        labelName.text = getname
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
