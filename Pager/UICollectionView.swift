//
//  UICollectionView.swift
//  Pager
//
//  Created by Loic on 8/5/17.
//  Copyright © 2017 3sparks. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    var centerPoint : CGPoint {
        
        get {
            return CGPoint(x: self.center.x + self.contentOffset.x, y: self.center.y + self.contentOffset.y);
        }
    }
    
    var leftPoint : CGPoint {
        
        get {
            return CGPoint(x: (self.center.x + self.contentOffset.x) - self.frame.width/2, y: self.center.y + self.contentOffset.y);
        }
    }
    
    var rightPoint : CGPoint {
        
        get {
            return CGPoint(x: (self.center.x + self.contentOffset.x) + self.frame.width/2, y: self.center.y + self.contentOffset.y);
        }
    }
    
    var centerCellIndexPath: IndexPath? {
        
        if let centerIndexPath = self.indexPathForItem(at: self.centerPoint) {
            return centerIndexPath
        }
        return nil
    }
    
    func transition( _ to: CGFloat) {
        if let centerIndex = centerCellIndexPath {
            let centerCell = cellForItem(at: centerIndex) as! PagerCollectionViewCell
            
            centerCell.containerView.layer.opacity = fabsf(Float(to/375))
            
        }
        
        
    }
    
    
}
