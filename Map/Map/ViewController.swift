//
//  ViewController.swift
//  Map
//
//  Created by げんと on 2018/03/22.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        let searchKeyword = textField.text
        
        print(searchKeyword!)
        
        return true
    }

    @IBOutlet weak var inputText: UITextField!
    
    
    @IBOutlet weak var displayMap: MKMapView!
    
}

