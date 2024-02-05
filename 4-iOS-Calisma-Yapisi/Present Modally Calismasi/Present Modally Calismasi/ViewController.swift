//
//  ViewController.swift
//  Present Modally Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }
   
   @IBAction func goto2(_ sender: Any) {
      
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(identifier: "sayfa2") as! ViewController2
      
      self.present(gidilecekViewController, animated: true, completion: nil)
      
   }
   
   
}

