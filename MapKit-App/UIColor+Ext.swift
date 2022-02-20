//
//  UIColor+Ext.swift
//  MapKit-App
//
//  Created by Harun Gunes on 20/02/2022.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func mainPink() -> UIColor {
        return UIColor.rgb(red: 221, green: 94, blue: 86)
    }
    
    static func mainBlue() -> UIColor {
        return UIColor.rgb(red: 55, green: 120, blue: 250)
    }
    
    static func directionsGreen() -> UIColor {
        return UIColor.rgb(red: 76, green: 217, blue: 100)
    }
    
}
