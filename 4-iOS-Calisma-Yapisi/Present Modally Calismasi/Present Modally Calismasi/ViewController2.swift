//
//  ViewController2.swift
//  Present Modally Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController2: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }
   
   
   @IBAction func goto3(_ sender: Any) {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
      
      self.present(gidilecekViewController, animated: true, completion: nil)
   }
   
   @IBAction func tiklanDismiss(_ sender: Any) {
      self.dismiss(animated: true, completion: nil)
   }
   
   

   
}
