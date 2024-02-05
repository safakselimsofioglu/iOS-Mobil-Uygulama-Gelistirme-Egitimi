//
//  ViewController.swift
//  Kod ile Segue Gecisi
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
      
      let kisi = Kisiler(kisi_id: 1, kisi_ad: "Cabbar")
      
      performSegue(withIdentifier: "gofrom1to2", sender: kisi)
      
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      let gelenVeri = sender as? Kisiler
      
      print("Kişi ID : \(gelenVeri!.kisi_id!)")
      print("Kişi ID : \(gelenVeri!.kisi_ad!)")
      
      print("Geçiş 1'den 2'ye.")
   }
   
}

