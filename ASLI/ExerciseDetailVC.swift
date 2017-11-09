//
//  DetailViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/25/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ExerciseDetailVC: UIViewController {

    //var moves = [Movement]()
    var getname = String()
    var getImage = UIImage()
    
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let videoString:String? = Bundle.main.path(forResource: "Video", ofType: ".mp4")
        
        if let url = videoString {
            let videoURL = NSURL.fileURL(withPath: url)
            
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
        imgImage.image = getImage
        labelName.text = getname
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playVideo(_ sender: UIButton) {
        self.present(self.playerController, animated: true, completion: {
            self.playerController.player?.play()
            
        })
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
