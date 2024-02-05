//
//  TahminEkraniVC.swift
//  Sayi Tahmin Et
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class TahminEkraniVC: UIViewController {

   @IBOutlet weak var hak: UILabel!
   @IBOutlet weak var arttir: UILabel!
   @IBOutlet weak var textfieldGirdi: UITextField!
   
   var rastgeleSayi: Int?
   var kalanHak = 5
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      rastgeleSayi = Int.random(in: 0...100)
      print("Rastgele Sayı = \(rastgeleSayi!)")
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let gelenVeri = sender as? Bool {
         let gidilecekVC = segue.destination as! SonucEkraniVC
         gidilecekVC.sonuc = gelenVeri
      }
   }
    
   @IBAction func tahminet(_ sender: Any) {
      arttir.isHidden = false
      kalanHak -= 1
      
      if let veri = textfieldGirdi.text {
         
         if let tahmin = Int(veri) {
            
            if kalanHak != 0 {
               
               if tahmin == rastgeleSayi! {
                  let sonuc = true
                  performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
               }
               
               if tahmin > rastgeleSayi! {
                  arttir.text = "AZALT!"
                  hak.text = "Kalan Hak : \(kalanHak)"
               }
               
               if tahmin < rastgeleSayi! {
                  arttir.text = "ARTTIR!!"
                  hak.text = "Kalan Hak : \(kalanHak)"
               }
               
            }else{
               let sonuc = false
               performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
            }
            
            textfieldGirdi.text = ""
            
         }
         
      }
   }
   

}
