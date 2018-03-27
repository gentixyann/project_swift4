//
//  ViewController.swift
//  NFCReader
//
//  Created by HIROKI INOUE on 2017/08/05.
//  Copyright © 2017年 eEducation Labs. All rights reserved.
//

import UIKit
import CoreNFC

class ViewController: UIViewController, NFCNDEFReaderSessionDelegate {

    @IBOutlet weak var DataView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startReadNFC(_ sender: Any) {
        let session: NFCNDEFReaderSession = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: false)
        session.begin()
        print("Session started")
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {   
        for message in messages {
            for payload in message.records {
                if let payloadString = String.init(data: payload.payload.advanced(by: 1), encoding: .utf8) {
                    print(payloadString)
                    DispatchQueue.main.async {
                        self.DataView.text = payloadString
                    }
 
                }
            }
        }
    }
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("エラーが発生しました")
    }

}

