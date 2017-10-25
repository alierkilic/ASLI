//
//  ExercisesViewController.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/14/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class ExercisesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let yogaImages = ["yoga", "face", "fish"]
    
    var name:NSArray = []
    var imageArr:NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name = ["yoga", "face", "fish"]
        imageArr = [UIImage(named: "yoga.jpg")!, UIImage(named: "face.jpg")!, UIImage(named: "fish.jpg")!]
        // Do any additional setup after loading the view.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExercisecViewControllerTableViewCell
        
        cell.myImage.image = imageArr[indexPath.row] as? UIImage
        cell.myLabel.text = name[indexPath.row] as? String
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        DvC.getImage = imageArr[indexPath.row] as! UIImage
        DvC.getname = name[indexPath.row] as! String
        
        self.navigationController?.pushViewController(DvC, animated: true)
        
    }
    

    

}
