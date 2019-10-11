//
//  ViewController.swift
//  Rutas
//
//  Created by Wilson Alejandro Gonzalez Gaitan on 10/10/19.
//  Copyright © 2019 Wilson Alejandro Gonzalez Gaitan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://ioscreator.com")!
        webView.load(URLRequest(url: url))
    }

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
}

