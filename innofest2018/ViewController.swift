//
//  ViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 22/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit
import SCLAlertView
class ViewController: UIViewController {
    @IBOutlet var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Go for a walk"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func right(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton("Done") {
            self.navigationController?.popToRootViewController(animated: true)
        }
        alertView.showSuccess("Good Job", subTitle: "You are the best")
        
        // Upon displaying, change/close view
        
    }
    
}

