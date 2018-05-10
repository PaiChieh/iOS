//
//  ViewController.swift
//  Appinfo
//
//  Created by タケル on 2018/5/10.
//  Copyright © 2018年 OBFirm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mainBundle = Bundle.main
        let identifier = mainBundle.bundleIdentifier
        let info = mainBundle.infoDictionary
        let bundleId = mainBundle.object(forInfoDictionaryKey: "CFBundleName")
        let version = mainBundle.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        
        print("[identifier]:",identifier!)
        print("[info]:",info!)
        print("[bundleId]:",bundleId!)
        print("[version]:",version!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

