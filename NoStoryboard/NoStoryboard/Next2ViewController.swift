//
//  SecondViewController.swift
//  NoStoryboard
//
//  Created by げんと on 2018/04/03.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class Next2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let goButton = UIButton(frame: CGRect(x: 100,y: 300,width: 100,height:100))
//        goButton.setTitle("View3", for: .normal)
//        goButton.backgroundColor = UIColor.black
//        view.addSubview(goButton)
        
        let label = UILabel()
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = "View3"
        label.textColor = UIColor.blue
        self.view.addSubview(label)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
