//
//  ViewController.swift
//  Sayfalar Arasi Gecis
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var girdiAlani: UITextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }
   
   @IBAction func gonder(_ sender: Any) {
      
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewController2
      
      let gonderilecekMesaj = girdiAlani.text
      
      gidilecekViewController.mesaj = gonderilecekMesaj!
      
      let kisi = Kisiler(kisi_id: 1, kisi_ad: "Cabbar")
      
      gidilecekViewController.kisi = kisi
            
      // MODAL GEÇİŞİ
      // self.present(gidilecekViewController, animated: true, completion: nil)
      
      self.navigationController?.pushViewController(gidilecekViewController, animated: true)
      
   }
   
}

