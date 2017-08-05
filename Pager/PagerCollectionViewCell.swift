//
//  PagerCollectionViewCell.swift
//  Pager
//
//  Created by Loic on 8/5/17.
//  Copyright © 2017 3sparks. All rights reserved.
//

import UIKit

class PagerCollectionViewCell: BaseCollectionViewCell {
    
    lazy var containerView = UIView().then {
        $0.frame = CGRect(x: 15, y: 0, width: self.frame.width - 30, height: self.frame.height)
        $0.backgroundColor = .white
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 7
    }
    
    func transition(_ x: CGFloat) {
        let xu = fabsf(Float(x))
        print("Cell")
        print("\(self.center.x)")
        print("Superview")
        print("\(x)")
        containerView.frame = CGRect(x: 15, y: 0, width: (self.frame.width - 30) - (100 * CGFloat(xu/375)), height: (self.frame.height) -
            (100 * CGFloat(xu/375)))
    }
    
    
    
    override func setupViews() {
        addSubview(containerView)
    }
    
}
