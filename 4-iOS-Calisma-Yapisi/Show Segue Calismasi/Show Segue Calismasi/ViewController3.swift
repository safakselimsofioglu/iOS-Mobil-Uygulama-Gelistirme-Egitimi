//
//  ViewController3.swift
//  Show Segue Calismasi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController3: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      // Do any additional setup after loading the view.
   }
   
   @IBAction func goto1(_ sender: Any) {
      
      /*
      
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
      
      navigationController?.pushViewController(gidilecekViewController, animated: true)
       
       */
      
   }
   
   
   @IBAction func goto2(_ sender: Any) {
      
      /*
      
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController2
      
      navigationController?.pushViewController(gidilecekViewController, animated: true)
       
       */
      
   }
   
   @IBAction func geri(_ sender: Any) {
      navigationController?.popToRootViewController(animated: true)
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "gofrom3to1" {
         print("Geçiş : 3'den 1'e geçiş yapıldı.")
      }
      
      if segue.identifier == "gofrom3to2" {
         print("Geçiş : 3'den 2'ye geçiş yapıldı.")
      }
   }
   
   
}
