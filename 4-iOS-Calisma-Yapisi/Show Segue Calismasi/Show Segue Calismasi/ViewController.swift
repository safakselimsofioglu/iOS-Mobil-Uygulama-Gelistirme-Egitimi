//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   @IBAction func goto2(_ sender: Any) {
      
      /*
       
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
             
      navigationController?.pushViewController(gidilecekViewController, animated: true)
       
       */
      
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      if segue.identifier == "gofrom1to2" {
         print("1.Sayfadan 2.Sayfaya geçildi")
      }
      
   }
   
}

