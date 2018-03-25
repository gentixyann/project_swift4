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
    // \（変数名）で文字列に変数代入
    @IBAction func findSunrise(_ sender: Any) {
        let url = "https://query.yahooapis.com/v1/public/yql?q=select%20astronomy.sunrise%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22\(cityNameInput.text!)%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
        getURL(url:url)
    }
    func getURL(url:String){
        
    }
}

