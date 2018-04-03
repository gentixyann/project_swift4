//
//  ViewController.swift
//  NoStoryboard
//
//  Created by げんと on 2018/04/03.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height:1000))
        nextButton.setTitle("View1", for: .normal)
        nextButton.backgroundColor = UIColor.blue
        nextButton.addTarget(self, action: #selector(ViewController.goNext(_:)), for: .touchUpInside)
        //最初の画面の色
        view.backgroundColor = UIColor.white
        // `nextButton` オブジェクトを表示
        view.addSubview(nextButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        let nextVC = NextViewController()
        let naviVC = UINavigationController(rootViewController: nextVC)
        //ここで次の画面の色を指定してる
        nextVC.view.backgroundColor = UIColor.yellow
        self.present(naviVC, animated: true, completion: nil)
    }

}

