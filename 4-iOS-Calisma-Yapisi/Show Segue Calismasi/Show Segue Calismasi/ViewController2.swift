//
//  ViewController2.swift
//  Show Segue Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController2: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.navigationItem.hidesBackButton = true
      
   }
   
   @IBAction func goto3(_ sender: Any) {
      /*
       
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa3") as! ViewController3
      
      navigationController?.pushViewController(gidilecekViewController, animated: true)
       
       */
   }
   
   @IBAction func geri(_ sender: Any) {
      navigationController?.popViewController(animated: true)
   }
   
   
}
