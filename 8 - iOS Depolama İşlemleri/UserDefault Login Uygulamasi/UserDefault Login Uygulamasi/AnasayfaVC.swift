//
//  AnasayfaVC.swift
//  UserDefault Login Uygulamasi
//
//  Created by Şafak Selim Sofioğlu on 6.02.2024.
//

import UIKit

class AnasayfaVC: UIViewController {
   
   @IBOutlet weak var labelSonuc: UILabel!
   
   let d = UserDefaults.standard
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      navigationItem.hidesBackButton = true
      
      let ka = d.string(forKey: "kullaniciAdi")
      
      labelSonuc.text = "Hoşgeldiniz \(ka!)"
      
   }
   
   @IBAction func cikisYap(_ sender: Any) {
      d.removeObject(forKey: "kullaniciAdi")
      d.removeObject(forKey: "sifre")
      
      exit(-1)
   }
   
   
   
}
