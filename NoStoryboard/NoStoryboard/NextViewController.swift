//
//  Nav1ViewController.swift
//  NoStoryboard
//
//  Created by げんと on 2018/04/03.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

final class NextViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height:100))
        backButton.setTitle("back！", for: .normal)
        backButton.backgroundColor = UIColor.white
        backButton.addTarget(self, action: #selector(NextViewController.back(_:)), for: .touchUpInside)
        view.addSubview(backButton)
        
        let goButton = UIButton(frame: CGRect(x: 100,y: 500,width: 100,height:100))
        goButton.setTitle("View2の赤", for: .normal)
        goButton.backgroundColor = UIColor.red
        goButton.addTarget(self, action: #selector(NextViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(goButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func back(_ sender: UIButton) {// selectorで呼び出す場合Swift4からは「@objc」をつける。
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func goNext(_ sender: UIButton) {
        let next2vc = Next2ViewController()
        //ここで次の画面の色を指定してる
        next2vc.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(next2vc, animated: true)
    }

}

