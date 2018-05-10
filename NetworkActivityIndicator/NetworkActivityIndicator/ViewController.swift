//
//  ViewController.swift
//  NetworkActivityIndicator
//
//  Created by タケル on 2018/5/10.
//  Copyright © 2018年 OBFirm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //iPhone X doesn't work.
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

