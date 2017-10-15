//
//  ExercisecViewControllerTableViewCell.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/15/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ExercisecViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
