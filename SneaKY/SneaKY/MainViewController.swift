//
//  MainViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 19/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let shoes = [["name":"white","info":"1","price":"5400"],["name":"grey","info":"2","price":"5000"],["name":"black","info":"3","price":"4800"],["name":"white","info":"1","price":"5400"],["name":"grey","info":"2","price":"5000"],["name":"black","info":"3","price":"4800"],["name":"white","info":"1","price":"5400"],["name":"grey","info":"2","price":"5000"],["name":"black","info":"3","price":"4800"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the navigation bar for current view controller
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shoes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.ShoeInfo.text =  self.shoes[indexPath.row]["info"]
        cell.ShoeImage.image = UIImage(named: self.shoes[indexPath.row]["name"]!)
        cell.ShoePrice.text = "฿ " + self.shoes[indexPath.row]["price"]!
        
        return cell
    }
}

