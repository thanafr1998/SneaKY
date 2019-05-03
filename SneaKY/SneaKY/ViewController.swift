//
//  ViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 19/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBAction func NextPage(_ sender: Any) {
        
        if Username.text?.isEmpty == true
        {
            let alert = UIAlertController(title: "ERROR", message: "Please type username", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            
            self.present(alert, animated:  true)
            return
        }
        
//        // Instantiate SecondViewController
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        
        // Set "Hello World" as a value to myStringValue
        ProfileViewController.profileName = Username.text!
        performSegue(withIdentifier: "enter", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="enter"){
//            let dest : ProfileViewController? = segue.destination as? ProfileViewController;
//            //            [view des]
//            let name = self.Username.text
//            dest.se
//            dest?.profileName = self.Username.text ?? "fuck u"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

