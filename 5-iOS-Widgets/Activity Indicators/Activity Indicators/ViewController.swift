//
//  ViewController.swift
//  Activity Indicators
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var indicator: UIActivityIndicatorView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      indicator.isHidden = true
   }

   @IBAction func basla(_ sender: Any) {
      indicator.startAnimating()
      indicator.isHidden = false
   }
   
   @IBAction func dur(_ sender: Any) {
      indicator.stopAnimating()
      indicator.isHidden = true
   }
   
}

