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
        
        let goButton = UIButton(frame: CGRect(x: 100,y: 0,width: 100,height:100))
        goButton.setTitle("Go！next", for: .normal)
        goButton.backgroundColor = UIColor.black
        goButton.addTarget(self, action: #selector(Next2ViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(goButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {
        let next2vc = Next2ViewController()
        let goButton = UIButton(frame: CGRect(x: 100,y: 200,width: 100,height:100))
        goButton.setTitle("Go！next", for: .normal)
        next2vc.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(next2vc, animated: true)
    }
    
}
