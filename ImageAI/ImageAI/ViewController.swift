//
//  ViewController.swift
//  ImageAI
//
//  Created by げんと on 2018/03/26.
//  Copyright © 2018年 Gento. All rights reserved.
//

//複数のクラス定義集をswiftではフレームワークという
import UIKit
import CoreML
import Vision

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
        imagenInference(image: (info[UIImagePickerControllerOriginalImage] as? UIImage)!)
    }
    //画像の判定（推測の意味でInference）
    func imagenInference(image: UIImage) {
        //モデルを読み込む処理 guardはある条件を満たしていたら処理をする。VNCoreMLModelの引数でどのモデルかを定義
        guard let model = try? VNCoreMLModel(for: Resnet50().model) else {
            fatalError("モデルをロードできん")
        }
        
        let request = VNCoreMLRequest(model: model) {
            [weak self] request, error in
            
            guard let results = request.results as? [VNClassificationObservation],
                let firstResult = results.first else {
                    fatalError("判定不可")
            }
            
            //上の処理を待たずに、非同期で行われる
            DispatchQueue.main.async {
                //0~1の値で呼ばれてるから100倍して%にしてる。\の後は変数
                self?.photoInfoDisplay.text = "確率 = \(Int(firstResult.confidence * 100))%, \n\n詳細 \((firstResult.identifier))"
            }
        }
        //requestの実行
        guard let ciImage = CIImage(image: image) else {
            fatalError("画像を変換できない")
        }
        //もしciImageを得られたら次へ行く。imageHandlerでrequestを処理するためのオブジェクトを生成
        //VNImageRequestHandlerの引数には判定をしたい画像
        let imageHandler = VNImageRequestHandler(ciImage: ciImage)
        
        DispatchQueue.global(qos: .userInteractive).async {
            do {
                //performメソッドでrequestを実行
                try imageHandler.perform([request])
            } catch{
                print("エラー\(error)")
            }
    }
    
}

}
