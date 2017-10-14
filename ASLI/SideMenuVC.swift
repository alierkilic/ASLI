//
//  SideMenuVC.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 10/13/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        switch indexPath.row {
            case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowExercises"), object: nil)
            case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowProfile"), object: nil)
            case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        default: break
        }
    }
}
