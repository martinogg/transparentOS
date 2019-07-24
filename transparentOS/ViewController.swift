//
//  ViewController.swift
//  transparentOS
//
//  Created by martin ogg on 24/07/2019.
//  Copyright © 2019 martin ogg. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var opaqueBgnd: UIView!
    
    @IBOutlet var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func transparencyButtonPressed(_ sender: Any) {
        
        if (self.opaqueBgnd.alpha.isEqual(to: 1.0)) {
            UIView.animate(withDuration: 1) {
                self.opaqueBgnd.alpha = 0
            }
        }
        else if (self.opaqueBgnd.alpha.isEqual(to: 0.0)) {
            UIView.animate(withDuration: 1) {
                self.opaqueBgnd.alpha = 1
            }
        }
    }
    
    @IBAction func webBrowserButtonPressed(_ sender: Any) {
        
        if (self.webview.alpha.isEqual(to: 1.0)) {
            UIView.animate(withDuration: 1) {
                self.webview.alpha = 0
            }
        }
        else if (self.webview.alpha.isEqual(to: 0.0)) {
            UIView.animate(withDuration: 1) {
                self.webview.alpha = 1
            }
            
            self.webview.load(URLRequest(url: URL(string: "https://www.google.com/")!))
        }
    }
    
    
    @IBAction func clockButtonWidgetPressed(_ sender: Any) {
    }
    
    
}

