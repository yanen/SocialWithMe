//
//  mapViewController.swift
//  innofest2018
//
//  Created by Ler Yan En on 23/10/18.
//  Copyright © 2018 Ler Yan En. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class mapViewController: UIViewController {

    @IBOutlet var mapkit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapkit.showsUserLocation = true
        let points = [
            ["title": "Shauny",    "latitude": 1.314350, "longitude": 103.765240],
            ["title": "Kirean", "latitude": 1.312411, "longitude": 103.776486],
            ["title": "Onn kit",     "latitude": 1.311982, "longitude": 103.775993]
            
        ]
        for point in points {
            let annotation = MKPointAnnotation()
            annotation.title = point["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: point["latitude"] as! Double, longitude: point["longitude"] as! Double)
            mapkit.addAnnotation(annotation)
        }
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
