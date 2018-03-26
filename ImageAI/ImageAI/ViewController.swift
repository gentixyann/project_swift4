//
//  ViewController.swift
//  ImageAI
//
//  Created by げんと on 2018/03/26.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

//Delegateはイベントを検知してプログラムに渡す役割
class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var photoDisplay: UIImageView!
    
    @IBOutlet weak var photoInfoDisplay: UITextView!
    
    var imagePicker : UIImagePickerController!
    
    //viewDidLoadは起動直後に行う処理
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func takePhoto(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        photoDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
}

