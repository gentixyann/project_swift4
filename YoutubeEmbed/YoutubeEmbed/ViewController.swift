//
//  ViewController.swift
//  YoutubeEmbed
//
//  Created by げんと on 2018/04/01.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    
    @IBOutlet var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getVideo(videoCode: "OVGbAFy36xM")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode: String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        myWebView.load(URLRequest(url: url!))
    }
    
    
    
}

