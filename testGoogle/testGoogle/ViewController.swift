//
//  ViewController.swift
//  testGoogle
//
//  Created by げんと on 2018/03/27.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController, UISearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude:1.285, longitude:103.848, zoom:12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
    }
    
    @IBOutlet weak var mapView: GMSMapView!
    
    
    @IBAction func searchWithAddress(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        self.present(searchController, animated:true, completion: nil)
    }
    
}

