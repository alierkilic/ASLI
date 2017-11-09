//
//  LikedExercisesViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/26/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit
import CoreData

class LikedExercisesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var name:NSArray = []
    var imageArr:NSArray = []
    var getArray = Array<Any>()
    @IBOutlet weak var tableview: UITableView!
    var araaay = [false, false, false]
    var likedArr:[Int] = []
    

    var moves = [Movement]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.tableFooterView = UIView() // removes extra separator lines for empty rows in UITableView
        name = ["Face massage no:1", "Face massage no:2", "Nose massage no:1"]
        imageArr = [UIImage(named: "yoga.jpg")!, UIImage(named: "face.jpg")!, UIImage(named: "fish.jpg")!]
        //araaay = UserDefaults.standard.array(forKey: "SavedBoolArray") as! [Bool]
        //likedArr = UserDefaults.standard.array(forKey: "SavedIntArray") as! [Int]
        
//        let fetchRequest: NSFetchRequest<Movement> = Movement.fetchRequest()
//
//        do {
//            let moves = try PersistenceServce.context.fetch(fetchRequest)
//            self.moves = moves
//            self.tableview.reloadData()
//        } catch {}
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewdidappear")
        
        //super.viewDidAppear(Bool)
        if let x = UserDefaults.standard.array(forKey: "SavedBoolArray") as? [Bool]{
            araaay = x
        }
        else{
            araaay = [false, false, false]
        }
        if let y = UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int] {
        likedArr = y
            for x in likedArr {
            print(x)
        }
        }
        else {
        likedArr = []
        }
        tableview.reloadData()
        
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

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return likedArr.count
    }
//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExercisesVCTableViewCell
//
//        //cell.myImage.image = imageArr[indexPath.row] as? UIImage
//        cell.myLabel.text = name[likedArr[indexPath.row]] as! String
//        //cell.likeButton.tag = indexPath.row
//        //cell.likeButton.imageView?.image =
//        return cell
//    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! LikedVCTableViewCell
        cell.myLabel.text = name[likedArr[(indexPath.row)]] as? String
        cell.myImage.image = imageArr[likedArr[indexPath.row]] as? UIImage
        cell.myImage.layer.cornerRadius = cell.myImage.frame.size.width / 2
        cell.myImage.clipsToBounds = true
        
        cell.likeButton.tag = likedArr[indexPath.row]
        cell.likeButton.setImage(#imageLiteral(resourceName: "like_on.png"), for: .normal)
       
        return cell
    }
    
   
    
}
