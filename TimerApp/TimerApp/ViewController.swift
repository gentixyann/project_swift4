//
//  ViewController.swift
//  TimerApp
//
//  Created by げんと on 2018/03/24.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var duration = 0
    let settingKey = "timerValue"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let setting = UserDefaults.standard
        setting.register(defaults: [settingKey: 60])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var timeDisplay: UILabel!
    
    
    @IBAction func settingButtonAction(_ sender: Any) {
    }
    
    
    @IBAction func startTimerAction(_ sender: Any) {
    }
    
    
    @IBAction func stopTimerAction(_ sender: Any) {
    }
    
    func displayUpdate() -> Int{
        let settings = UserDefaults.standard
        let timerValue = settings.integer(forKey: settingKey)
        let remainSeconds = timerValue - duration
        timeDisplay.text = "あと\(remainSeconds)秒"
        
        return remainSeconds
    }
}

