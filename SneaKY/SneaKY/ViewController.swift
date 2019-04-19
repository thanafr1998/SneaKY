//
//  ViewController.swift
//  SneaKY
//
//  Created by thanadol rungjitwaranon on 19/4/2562 BE.
//  Copyright © 2562 thanadol rungjitwaranon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func NextPage(_ sender: Any) {
        performSegue(withIdentifier: "enter", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

