//
//  DocumentViewController.swift
//  GameboyMIDIPlayer
//
//  Created by Evan Murray on 6/17/20.
//  Copyright © 2020 Evan Murray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var document: UIDocument?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Access the document
        document?.open(completionHandler: { (success) in
            if success {
                
            } else {
                print("Document Loading Failed")
            }
        })
    }
    
    @IBAction func dismissDocumentViewController() {
        dismiss(animated: true) {
            self.document?.close(completionHandler: nil)
        }
    }
}
