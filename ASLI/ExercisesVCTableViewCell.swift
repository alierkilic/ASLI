//
//  ExercisecViewControllerTableViewCell.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/15/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ExercisesVCTableViewCell: UITableViewCell {

    
    //var arraay = []
    
   // var moves = [Movement]()
    @IBOutlet weak var backgroundCardView: UIView!
    
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
   
    //let array = defaults.array(forKey: "SavedBoolArray")  as? [Bool] ?? [Bool]()
    @IBAction func likeClicked(_ sender: UIButton) {
        
        //var likedArray = (UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int])!
        if let x = (UserDefaults.standard.array(forKey: "SavedBoolArray") as? [Bool])
        {
            print("onceden data varmis 1")
            var arraay = x
            if arraay[likeButton.tag] == false {
                sender.setImage(#imageLiteral(resourceName: "like_on.png"), for: .normal)
                arraay[(likeButton.tag)] = true
                if let y = (UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int]){
                    var likedArray = y
                    likedArray.append(likeButton.tag)
                    UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                    print("onceden int data varmis 2")
                }
                else {
                    var likedArray:[Int] = []
                    likedArray.append(likeButton.tag)
                    UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                    print("onceden int data yokmus 3")
                }
                UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
            } else {
                sender.setImage(#imageLiteral(resourceName: "hearth.png"), for: .normal)
                arraay[likeButton.tag] = false
                if let y = (UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int]){
                    print("onceden int data varmis 4")
                    var likedArray = y
                    likedArray = likedArray.filter {$0 != likeButton.tag}
                    UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                    print("data sildik")
                }
                else {
                 print("bi bok yapmadik error 1")
                }
                
                UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
            }
        }
        else {
            print("onceden data yokmus 5")
            var arraay = [false, false, false]
            var likedArray:[Int] = []
            if arraay[likeButton.tag] == false {
                sender.setImage(#imageLiteral(resourceName: "like_on.png"), for: .normal)
                arraay[(likeButton.tag)] = true
                likedArray.append(likeButton.tag)
                UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
                print("data koyduk")
            } else {
                sender.setImage(#imageLiteral(resourceName: "hearth.png"), for: .normal)
                arraay[likeButton.tag] = false
                likedArray = likedArray.filter {$0 != likeButton.tag}
                UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
                UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
                print("data sildik")
            }
        }
        
        
        
        //self.moves.append(move)
        
    }
//    @IBAction func likeClicked(_ sender: UIButton) {
//        //UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
//        if sender.currentImage == #imageLiteral(resourceName: "hearth.png") {
//            sender.setImage(#imageLiteral(resourceName: "like_on.png"), for: .normal)
//            let move = Movement(context: PersistenceServce.context)
//            move.name =  myLabel.text
//            PersistenceServce.saveContext()
//        } else {
//            sender.setImage(#imageLiteral(resourceName: "hearth.png"), for: .normal)
//        }
//
//        //self.moves.append(move)
//
//    }
    
}
