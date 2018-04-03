//
//  Nav1ViewController.swift
//  NoStoryboard
//
//  Created by げんと on 2018/04/03.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

final class Nav1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height:100))
        nextButton.setTitle("Go!", for: .normal)
        nextButton.backgroundColor = UIColor.blue
        nextButton.addTarget(self, action: #selector(Nav1ViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        let nextVC = SecondViewController()
        let naviVC = UINavigationController(rootViewController: nextVC)
        nextVC.view.backgroundColor = UIColor.blue
        self.present(naviVC, animated: true, completion: nil)
    }
}

