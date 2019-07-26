//
//  ViewController.swift
//  Scriptable
//
//  Created by cs4alhaider on 07/13/2019.
//  Copyright (c) 2019 cs4alhaider. All rights reserved.
//

import Scriptable

class ViewController: NSViewController {
    
    @IBOutlet weak var lable: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.stringValue = Task.Network.getPassiveFTP.runTask().dataOutput.contains("On") ? "Proxy is: On" : "Proxy is: Off"
    }
    
    @IBAction func buttons(_ sender: NSButton) {
        switch sender.tag {
        case 0: // On button
            Task.Network.allSetOnCommands.forEach({$0.runTask()})
            lable.stringValue = "Proxy is: On"
        case 1: // Off button
            Task.Network.allSetOffCommands.forEach({$0.runTask()})
            lable.stringValue = "Proxy is: Off"
        default:
            break
        }
    }
}
