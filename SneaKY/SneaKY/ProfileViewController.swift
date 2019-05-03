//
//  UserViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 23/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var user: UILabel!
    static var profileName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.user.text = ProfileViewController.profileName
        // Do any additional setup after loading the view.
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
