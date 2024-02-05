//
//  SonucEkraniVC.swift
//  Sayi Tahmin Et
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class SonucEkraniVC: UIViewController {
   
   @IBOutlet weak var imageViewSonuc: UIImageView!
   @IBOutlet weak var labelSonuc: UILabel!
   var sonuc: Bool?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationItem.hidesBackButton = true
      self.navigationItem.title = "Sonuç Ekranı"
      
      print(sonuc!)
      
      if sonuc == true {
         imageViewSonuc.image = UIImage(named: "mutlu_resim")
         labelSonuc.text = "KAZANDINIZ!"
      } else {
         imageViewSonuc.image = UIImage(named: "uzgun_resim")
         labelSonuc.text = "KAYBETTINIZ!"
      }
   }
   
   @IBAction func tekrarOyna(_ sender: Any) {
      navigationController?.popToRootViewController(animated: true)
   }
   
}
