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
        let hi = UserDefaults.standard.string(forKey: "selected")
        self.title = hi
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Map", style: .done, target: self, action: #selector(callmap))
        if(isKeyPresentInUserDefaults(key: "finished")){
            
        }else{
            UserDefaults.standard.set([String](), forKey: "finished")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func callmap(){
        self.performSegue(withIdentifier: "map", sender: nil)
    }
    @IBAction func right(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.addButton("Done") {
            var array = UserDefaults.standard.array(forKey: "tasks") as! [String]
            print(array)
            let hi = UserDefaults.standard.string(forKey: "selected")
             var selected = UserDefaults.standard.integer(forKey: "selectedrow")
            UserDefaults.standard.set(array.filter { $0 != hi }, forKey: "tasks")
            print(array.filter { $0 != hi })
            print("/////")
            print(UserDefaults.standard.array(forKey: "finished"))
            print("/////")
            array = UserDefaults.standard.array(forKey: "finished") as! [String]
            array.append(hi!)
              UserDefaults.standard.set(array, forKey: "finished")
            
            
            self.navigationController?.popToRootViewController(animated: true)
        }
        alertView.showSuccess("Good Job", subTitle: "You are the best")
        
        // Upon displaying, change/close view
        
    }
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
}

