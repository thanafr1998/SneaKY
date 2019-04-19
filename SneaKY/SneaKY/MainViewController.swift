//
//  MainViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 19/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var shoes = [["name":"white","info":"1"],["name":"grey","info":"2"],["name":"black","info":"3"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.ShoeInfo.text =  self.shoes[indexPath.row]["info"]
        cell.ShoeImage.image = UIImage(named: self.shoes[indexPath.row]["name"]!)
        
        return cell
    }
}

