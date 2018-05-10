//
//  ViewController.swift
//  MultiplePrint
//
//  Created by タケル on 2018/5/10.
//  Copyright © 2018年 OBFirm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Writes the textual representations of the given items into the standard output.（僅內容）")
        NSLog("Logs an error message to the Apple System Log facility.（系統數據＋內容）")
        debugPrint("Writes the textual representations of the given items most suitable for debugging into the standard output.（雙引號的內容）")
        CFShow("Prints a description of a Core Foundation object to stderr.（僅內容）" as CFTypeRef)
        
        let position = (x: 24.5, y: 10)
        dump(position)
        
        let str = "Xcode!"
        print("Hello " + str)
        print("Hello \(str)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

