//
//  UIColor.swift
//  Cozy
//
//  Created by Loic on 7/15/17.
//  Copyright © 2017 3sparks. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    class var amethyst: UIColor {
        return UIColor(red: 157.0 / 255.0, green: 106.0 / 255.0, blue: 208.0 / 255.0, alpha: 1.0)
    }
    
    class var paleOrange: UIColor {
        return UIColor(red: 243.0 / 255.0, green: 156.0 / 255.0, blue: 18.0 / 255.0, alpha: 1.0)
    }
    
    class var emerald: UIColor {
        return UIColor(red: 46.0 / 255.0, green: 204.0 / 255.0, blue: 113.0 / 255.0, alpha: 1.0)
    }
    
    class var alizarin: UIColor {
        return UIColor(red: 231.0 / 255.0, green: 76.0 / 255.0, blue: 60.0 / 255.0, alpha: 1.0)
    }
    
    class var houndGrey: UIColor {
        return UIColor(red: 105.0 / 255.0, green: 116.0 / 255.0, blue: 117.0 / 255.0, alpha: 1.0)
    }
    
    class var midnightBlue: UIColor {
        return UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    }
    
    class var lavenderPink: UIColor {
        return UIColor(red: 228.0 / 255.0, green: 147.0 / 255.0, blue: 227.0 / 255.0, alpha: 1.0)
    }
    
    class var darkBrown20: UIColor {
        return UIColor(red: 29.0 / 255.0, green: 14.0 / 255.0, blue: 3.0 / 255.0, alpha: 0.2)
    }
    
    class var silver: UIColor {
        return UIColor(red: 189.0 / 255.0, green: 195.0 / 255.0, blue: 199.0 / 255.0, alpha: 1.0)
    }
    
    class var coolGrey: UIColor {
        return UIColor(red: 154.0 / 255.0, green: 159.0 / 255.0, blue: 167.0 / 255.0, alpha: 1.0)
    }
    
    class var charcoalGrey: UIColor {
        return UIColor(red: 44.0 / 255.0, green: 47.0 / 255.0, blue: 51.0 / 255.0, alpha: 1.0)
    }
    
    class var clearBlue: UIColor {
        return UIColor(red: 27.0 / 255.0, green: 130.0 / 255.0, blue: 249.0 / 255.0, alpha: 1.0)
    }
    
    class var clearGrey: UIColor {
        return UIColor(red: 197.0 / 255.0, green: 206.0 / 255.0, blue: 209.0 / 255.0, alpha: 1.0)
    }
    
    class var paleGrey: UIColor {
        return UIColor(red: 247.0 / 255.0, green: 248.0 / 255.0, blue: 252.0 / 255.0, alpha: 1.0)
    }
}
