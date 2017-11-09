//
//  ExercisesViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/14/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ExercisesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    

    let yogaImages = ["yoga", "face", "fish"]
    
    var arraay = [false, false, false]
    var likedArray:[Int] = []
    let moves = [Movement]()
    var name:NSArray = []
    var imageArr:NSArray = []
    
    
    @IBOutlet weak var myTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.myTableview.tableFooterView = UIView() // removes extra separator lines for empty rows in UITableView
        name = ["Face massage no:1", "Face massage no:2", "Nose massage no:1"]
        imageArr = [UIImage(named: "yoga.jpg")!, UIImage(named: "face.jpg")!, UIImage(named: "fish.jpg")!]
        
       // UserDefaults.standard.set(arraay, forKey: "SavedBoolArray")
        //UserDefaults.standard.set(likedArray, forKey: "SavedIntArray")
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.array(forKey: "SavedBoolArray") as? [Bool]{
            arraay = x
        }
        else{
            arraay = [false, false, false]
        }
        
        if let y = UserDefaults.standard.array(forKey: "SavedIntArray") as? [Int]{
            likedArray = y
        }
        else{
            arraay = [false, false, false]
        }
        
        myTableview.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return name.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExercisesVCTableViewCell
        
        cell.myImage.image = imageArr[indexPath.row] as? UIImage
        cell.myImage.layer.cornerRadius = cell.myImage.frame.size.width / 2
        cell.myImage.clipsToBounds = true
        
        //cell.myImage.layer.cornerRadius = (cell.myImage.image?.size.width)!/2
        //let image = imageArr[indexPath.row] as? UIImage
        //let image = UIImage(named: "face.jpg")
        //cell.imageView?.image = image
        //cell.imageView?.layer.cornerRadius = (image?.size.width)!/2
        
        cell.myLabel.text = name[indexPath.row] as? String
        cell.likeButton.tag = indexPath.row
        if arraay[indexPath.row] == true {
            cell.likeButton.setImage(#imageLiteral(resourceName: "like_on.png"), for: .normal)
        }
        else{
            cell.likeButton.setImage(#imageLiteral(resourceName: "hearth.png"), for: .normal)
        }
        
        //cell.likeButton.imageView?.image =
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! ExerciseDetailVC
        DvC.getImage = imageArr[indexPath.row] as! UIImage
        DvC.getname = name[indexPath.row] as! String
        
        self.navigationController?.pushViewController(DvC, animated: true)
        
    }
    

    

}
