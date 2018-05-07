//
//  ViewController.swift
//  UnityAds_Sample
//
//  Created by タケル on 2018/5/7.
//  Copyright © 2018年 OBFirm. All rights reserved.
//  https://github.com/Unity-Technologies/unity-ads-ios/releases

import UIKit
import UnityAds

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UnityAds.initialize("1791965", delegate: self)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController:UnityAdsDelegate {
    func unityAdsReady(_ placementId: String) {
        UnityAds.show(self, placementId: "video")
//        UnityAds.show(self, placementId: "rewardedVideo")
    }
    
    func unityAdsDidError(_ error: UnityAdsError, withMessage message: String) {
        //
    }
    
    func unityAdsDidStart(_ placementId: String) {
        //
    }
    
    func unityAdsDidFinish(_ placementId: String, with state: UnityAdsFinishState) {
        //
    }
}


