//
//  SettingViewController.swift
//  TimerApp
//
//  Created by げんと on 2018/03/24.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let valueArray : [Int] = [10,30,60,120,180]
    let settingKey = "timerValue"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タップ後、どの関数を呼び出すかdelegate
        timerPicker.delegate = self
        timerPicker.dataSource = self
        
        let settings = UserDefaults.standard
        let timerValue = settings.integer(forKey: settingKey)
        
        for row in 0..<valueArray.count{
            if valueArray[row] == timerValue{
                timerPicker.selectRow(row, inComponent: 0, animated: true)
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var timerPicker: UIPickerView!
    
    
    @IBAction func chooseAction(_ sender: Any) {
    }
}
