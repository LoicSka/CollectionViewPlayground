//
//  PagerController.swift
//  Pager
//
//  Created by Loic on 8/5/17.
//  Copyright © 2017 3sparks. All rights reserved.
//

import UIKit

private let cellId = "Cell"

class PagerController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    fileprivate var offsetX: CGFloat = 0
    fileprivate var lastOffsetX: CGFloat = 0
    fileprivate var scrollOffsetTempX: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup collectionView
        setupCollectionView()
        setupViews()

    }
    
    // MARK: CollectionView
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .silver
        cv.showsHorizontalScrollIndicator = false
        cv.isPagingEnabled = true
        cv.isScrollEnabled = true
        cv.isPrefetchingEnabled = true
        cv.dataSource = self
        cv.delegate = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    func setupCollectionView() {
        collectionView.register(PagerCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PagerCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollOffsetTempX = lastOffsetX > scrollView.contentOffset.x ? -1 : 1
        offsetX = (Int(scrollView.contentOffset.x) % Int(view.frame.width)) == 0 ? 0 : offsetX + scrollOffsetTempX
        lastOffsetX = scrollView.contentOffset.x
        
        let cell = collectionView.cellForItem(at: collectionView.centerCellIndexPath!) as! PagerCollectionViewCell
        cell.transition(offsetX)
        
    }
    
    
    func setupViews() {
        
        view.backgroundColor = .silver
        view.addSubview(collectionView)
        
        collectionView.fillParentView(padLeft: 0, padRight: 0, padTop: 100, padBottom: -100)
    }
    

}
