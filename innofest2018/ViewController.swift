//
//  ViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 22/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Bonding"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func right(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}

