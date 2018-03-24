//
//  ViewController.swift
//  Camera
//
//  Created by げんと on 2018/03/23.
//  Copyright © 2018年 Gento. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var photoImage: UIImageView!
    
    @IBAction func cameraLaunchAction(_ sender: Any) {
        
        //.isSourceTypeAvailableこの場合、カメラが使えるかの確認
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("camera can be used.")
            
            let ipc = UIImagePickerController()
            ipc.sourceType = .camera
            ipc.delegate = self
            present(ipc, animated: true, completion: nil)
            
        }else{
            print("camera is not available.")
        }
    }
    
    
    @IBAction func shareAction(_ sender: Any) {
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        photoImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}

