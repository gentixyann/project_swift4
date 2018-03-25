//
//  ViewController.swift
//  SunriseApp
//
//  Created by げんと on 2018/03/25.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cityNameInput: UITextField!
    
    //UILabelはタップしたり入力したりできない
    @IBOutlet weak var sunriseTimeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //沢山コード書きたいからこれだけ下にした
    @IBOutlet weak var findSunrise: UIButton!
    

}

