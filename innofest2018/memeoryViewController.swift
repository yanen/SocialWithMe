//
//  memeoryViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 23/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit
import SCLAlertView
import FileProvider
class memeoryViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    @IBOutlet var imageview: UIImageView!
    @IBOutlet var textview: UITextView!
    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
 var hi = UserDefaults.standard.string(forKey: "selectedmememory")
        if(isKeyPresentInUserDefaults(key: hi!)){
            var data2 = UserDefaults.standard.data(forKey: hi!)
            imageview.image = UIImage(data: data2!)
        }else{
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func importimage(_ sender: Any) {
        ImagePickerManager().pickImage(self){ image in
            //here is the image
            var hi = UserDefaults.standard.string(forKey: "selectedmememory")
            self.imageview.image = image
            SCLAlertView().showSuccess("Success", subTitle: "Image successfully imported")
            let imageData = image.pngData()
            UserDefaults.standard.set(imageData, forKey: hi ?? "nil")
            
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
}
