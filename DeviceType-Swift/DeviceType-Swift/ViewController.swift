//
//  ViewController.swift
//  DeviceType-Swift
//
//  Created by タケル on 2018/1/25.
//  Copyright © 2018年 タケル. All rights reserved.
//

import UIKit

public extension UIDevice {
    
    var platformCode: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
}
public extension UIDevice {
    public func isX() -> Bool {
        if UIScreen.main.bounds.height == 812 {
            return true
        }
        
        return false
    }
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if (UIDevice.current.platformCode == "iPhone10,6" || UIDevice.current.platformCode == "iPhone10,3"){
            print("Device Type is iPhone X！")
        }
        if UIDevice.current.isX() {
            print("Screen size is iPhone X！")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
