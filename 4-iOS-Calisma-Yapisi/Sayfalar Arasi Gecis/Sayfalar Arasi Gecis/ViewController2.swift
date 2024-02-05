//
//  ViewController2.swift
//  Sayfalar Arasi Gecis
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController2: UIViewController {
   
   @IBOutlet weak var etiket: UILabel!
   
   var mesaj: String?
   var kisi = Kisiler()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      etiket.text = mesaj!
      print("Kişi id: \(kisi.kisi_id!) ve kişi ad: \(kisi.kisi_ad!)")
      
   }
   
}
