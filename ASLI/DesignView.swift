//
//  DesignView.swift
//  ASLI
//
//  Created by Ali Can Erkilic on 11/3/17.
//  Copyright © 2017 Ali Can Erkilic. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class DesignView : UIView {
    
    @IBInspectable var cornerRadius : CGFloat = 0
    @IBInspectable var shadowColor : UIColor? = UIColor.black
    
    @IBInspectable let shadowOffSetWidth : Int = 0
    @IBInspectable let shadowOffSetHeight : Int = 1
    
    @IBInspectable var shadowOppacity : Float = 0.2
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        
        layer.shadowOpacity = shadowOppacity
    }
}
