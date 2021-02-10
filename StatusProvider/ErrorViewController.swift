//
//  ErrorViewController.swift
//  StatusProvider
//
//  Created by MarioHahn on 26/08/16.
//  Copyright © 2016 MarioHahn. All rights reserved.
//

import Foundation
import UIKit
import StatusProvider

class ErrorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Error"
        
        let simpleLoading = StatusObject.simpleLoading
        
        let status = StatusObject(title: "Error", description: "Oh... fu**", actionTitle: "Retry 🚀") {
            self.show(status: simpleLoading)
        }
        
        show(status: status)        
    }
}

extension ErrorViewController: StatusController {
   
    var statusView: StatusView? {
        return DefaultStatusView()
    }
}
