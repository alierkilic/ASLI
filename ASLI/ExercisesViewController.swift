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
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return yogaImages.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExercisecViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (yogaImages[indexPath.row] + ".jpg"))
        cell.myLabel.text = yogaImages[indexPath.row]
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
