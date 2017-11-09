//
//  LikedVCTableViewCell.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 11/8/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class LikedVCTableViewCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func likeClicked(_ sender: UIButton) {
        if let x = (UserDefaults.standard.array(forKey: "SavedBoolArray") as? [Bool])
        {
            var aray = x
            aray[likeButton.tag] = false
            if let y = (UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int]){
                var likedArray = y
                likedArray = likedArray.filter {$0 != likeButton.tag}
                UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                UserDefaults.standard.set(aray, forKey: "SavedBoolArray")
                print("data sildik likedtan")
                
        }
        }
    }
    
}
