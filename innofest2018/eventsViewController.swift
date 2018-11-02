//
//  eventsViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 23/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
class eventsViewController: UIViewController {
    @IBOutlet var adress: UITextField!
    @IBOutlet var shortdescrip: UITextField!
    @IBOutlet var datetime: UITextField!
    @IBOutlet var mapview: MKMapView!
    @IBAction func organise(_ sender: Any) {
        
    }
    @IBAction func date(_ sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePicker.Mode.date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), for: UIControl.Event.valueChanged)
    }
    @objc func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        datetime.text = dateFormatter.string(from: sender.date)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 
        var london = MKPointAnnotation()
        london.title = "Event(kan)"
        london.subtitle = "Football for elderly(verified safe by officals)"
        london.coordinate = CLLocationCoordinate2D(latitude: 1.313217, longitude: 103.771334)
        mapview.addAnnotation(london)
         london = MKPointAnnotation()
        london.title = "Event(Ler)"
        london.subtitle = "Mahjong session(not verrified)"
        london.coordinate = CLLocationCoordinate2D(latitude: 1.313217, longitude: 103.769804)
        mapview.addAnnotation(london)
         london = MKPointAnnotation()
        london.title = "Event(Ho)"
        london.subtitle = "Mornign walk(verified by officials)"
        london.coordinate = CLLocationCoordinate2D(latitude: 1.288000, longitude: 103.789841)
        mapview.addAnnotation(london)
        london = MKPointAnnotation()
        london.title = "Event(Yeo)"
        london.subtitle = "dancing session(verified by officials)"
        london.coordinate = CLLocationCoordinate2D(latitude: 1.313217, longitude: 103.771334)
        mapview.addAnnotation(london)

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
