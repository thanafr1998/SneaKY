//
//  MainViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 19/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class MainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let shoes = [["name":"Off-White x Air Jordan 1 Retro High 'University Blue'","image":"https://firebasestorage.googleapis.com/v0/b/sneaky-7e1e7.appspot.com/o/off-white-x-air-jordan-1-retro-high-university-blue-the-rarehouse.jpg?alt=media&token=5ebad492-d937-4261-8a38-5d406cc15106","price":5400],
    ["name":"adidas Yeezy Wave Runner 700 Solid OG","image":"https://firebasestorage.googleapis.com/v0/b/sneaky-7e1e7.appspot.com/o/adidas-yeezy-wave-runner-700-solid-og-the-rarehouse.jpg?alt=media&token=d6e5d064-6b64-4353-9f8e-037dbbbc0752","price":2910],
    ["name":"Nike x Off-White Air Presto 'White' (2018)","image":"https://firebasestorage.googleapis.com/v0/b/sneaky-7e1e7.appspot.com/o/nike-x-off-white-air-presto-white-2018-the-rarehouse.jpg.png?alt=media&token=b08e4672-d735-405b-a221-e5f6685d9193","price":2400],
    ["name":"adidas Yeezy Boost 350 V2 'Butter'","image":"https://firebasestorage.googleapis.com/v0/b/sneaky-7e1e7.appspot.com/o/adidas-yeezy-boost-350-v2-butter-the-rarehouse.jpg?alt=media&token=58db73c3-1c99-4844-8ec8-7a594e718247","price":1500]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.94, green:0.95, blue:0.97, alpha:1.0);
        
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
        cell.ShoeInfo.text =  self.shoes[indexPath.row]["name"] as! String
        

        let url = URL(string: self.shoes[indexPath.row]["image"] as! String)!
        cell.ShoeImage.af_setImage(withURL: url, placeholderImage: nil)
        if let str = self.shoes[indexPath.row]["price"] {
            cell.ShoePrice.text = "฿ \(str)"
        }
        return cell
    }
}

