//
//  memeoryViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 23/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit

class memeoryViewController: UIViewController {
    @IBOutlet var image: UIImageView!
    @IBOutlet var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 var hi = UserDefaults.standard.string(forKey: "selectedmememory")
        
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
