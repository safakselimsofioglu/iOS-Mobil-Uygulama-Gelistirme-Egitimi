//
//  ViewController3.swift
//  Present Modally Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   @IBAction func goto1(_ sender: Any) {
      
      // Define storyboard
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      // Define target View
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
      
      // Open View
      self.present(gidilecekViewController, animated: true, completion: nil)
   }
   

   @IBAction func goto2(_ sender: Any) {
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
      
      self.present(gidilecekViewController, animated: true, completion: nil)
   }
   

}
