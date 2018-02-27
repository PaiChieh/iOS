//
//  ViewController.swift
//  WKWebView
//
//  Created by タケル on 2018/2/26.
//  Copyright © 2018年 Takeru. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let _homePageURL = "http://www.apple.com.tw"
    
    @IBOutlet weak var _webView: WKWebView!
    
    var backButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _webView.navigationDelegate = self
        _webView.uiDelegate = self as? WKUIDelegate
        _setupWebView()
        _setupBackButton()
    }
    
    @objc func backButtonPressed(_ sender: UIBarButtonItem) {
        if(_webView.canGoBack) {
            _webView.goBack()
        } else {
            self.navigationController?.popViewController(animated:true)
        }
    }
    
    func _setupBackButton() {
        backButton = UIBarButtonItem (image: UIImage (named: "matome_btn_back"), style: UIBarButtonItemStyle.done, target: self, action: #selector(backButtonPressed(_:)))
    }
    
    func _setupWebView() {
        let myURL: URL! = URL(string: _homePageURL)
        let myRequest = URLRequest(url: myURL)
        
        _webView.load(myRequest)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: WKNavigationDelegate
{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
        if(_webView.canGoBack) {
            self.navigationItem.leftBarButtonItem = backButton
        } else {
            self.navigationItem.leftBarButtonItem = nil
        }
    }
}
