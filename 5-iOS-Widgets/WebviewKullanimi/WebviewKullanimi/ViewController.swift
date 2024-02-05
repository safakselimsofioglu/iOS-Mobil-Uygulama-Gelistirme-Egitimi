//
//  ViewController.swift
//  WebviewKullanimi
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit
import WebKit

class ViewController: UIViewController {
   
   @IBOutlet weak var webview: WKWebView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
      
      webview.load(URLRequest(url: url))
      
   }


}

