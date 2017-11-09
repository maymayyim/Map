//
//  ViewController.swift
//  Map
//
//  Created by 6272 on 11/9/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    func addPinToMap() {
        let location_redBuild = CLLocationCoordinate2DMake(13.795746,100.325885)
        let location_opBuild = CLLocationCoordinate2DMake(13.794388,100.325484)
        let annotation_red = MapMarker(coordinate: location_redBuild, title: "EGCO Department", subtitle: "Phutamonthon, Salaya")
        let annotation_op = MapMarker(coordinate: location_opBuild, title: "OP Building", subtitle: "Mahidol  University")
        mapView.addAnnotation(annotation_red)
        mapView.addAnnotation(annotation_op)
        setCenterOfMapToLocation(location: location_redBuild)
    }
    
    func setCenterOfMapToLocation(location: CLLocationCoordinate2D) {
        let coordinate = CLLocationCoordinate2DMake(location.latitude, location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        addPinToMap()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

