//
//  ViewController.swift
//  UserDefault Sayac Uygulamasi
//
//  Created by Şafak Selim Sofioğlu on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var labelSayac: UILabel!
   
   override func viewDidLoad() {
      
      super.viewDidLoad()
      
      let d = UserDefaults.standard
      
      var sayac = d.integer(forKey: "sayac")
      
      sayac = sayac + 1
      
      d.set(sayac, forKey: "sayac")
      
      labelSayac.text = "Sayaç : \(sayac)"
      
   }


}

