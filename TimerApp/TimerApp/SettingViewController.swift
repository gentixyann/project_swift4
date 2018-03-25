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
        //一つ前の画面に戻る
        _ = navigationController?.popViewController(animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //行数と列数がカウントされる
        return valueArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(valueArray[row])
    }
    
    //選択された時どうするか
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let settings = UserDefaults.standard
        settings.set(valueArray[row], forKey: settingKey)
        //同期する
        settings.synchronize()
    }
}
