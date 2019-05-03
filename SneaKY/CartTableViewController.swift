//
//  CartTableViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 22/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit
import Firebase

class CartTableViewController: UITableViewController {

    static var shoesData = [["name":"white","image":"white","price":"5400"],[],[]] as [Any]
    var ref: DatabaseReference!
    var cartData = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        ref.child("user").child("6031032921").observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? [String : Any]
            for each in value! {
                self.cartData.append(each.value as! NSDictionary)
            }
            self.tableView.reloadData()
        }) { (error) in
            print(error.localizedDescription)
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.cartData.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rentCell", for: indexPath) as! TableViewCell
        
        cell.name.text = self.cartData[indexPath.row]["name"] as! String

        let url = URL(string: self.cartData[indexPath.row]["image"] as! String)!
        cell.imageS.af_setImage(withURL: url, placeholderImage: nil)
        
        cell.expried.text = self.cartData[indexPath.row]["timestamp"] as! String
        let str: String! = "\(self.cartData[indexPath.row]["price"])"

        
        cell.size.text = self.cartData[indexPath.row]["size"] as! String
        
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd/MM/yyyy"
        
        if let date = dateFormatterGet.date(from: self.cartData[indexPath.row]["timestamp"] as! String) {
            cell.expried.text = dateFormatterPrint.string(from: date)
        } else {
            print("There was an error decoding the string")
        }
        
        return cell
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
