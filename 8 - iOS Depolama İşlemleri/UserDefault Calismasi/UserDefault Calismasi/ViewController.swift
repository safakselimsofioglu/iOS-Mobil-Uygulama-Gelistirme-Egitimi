//
//  ViewController.swift
//  UserDefault Calismasi
//
//  Created by Şafak Selim Sofioğlu on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      // Artık d nesnesi ile veri kaydetme, veri silme vb gibi işlemleri yapabiliyoruz.
      let d = UserDefaults.standard
      
      // Veri Kaydetme
      d.set("Ahmet", forKey: "ad")
      d.set(18, forKey: "yas")
      d.set(1.78, forKey: "boy")
      d.set(true, forKey: "medeniDurum")
      
      let arkadasListesi = ["ali", "veysel", "ece"]
      d.set(arkadasListesi, forKey: "liste")
      
      let sehirlerListesi:[String:String] = ["16":"Bursa", "34":"İstanbul"]
      d.set(sehirlerListesi, forKey: "dict")
      
      // Veri Okuma
      let ad = d.string(forKey: "ad") ?? "isim yok"
      let yas = d.integer(forKey: "yas") 
      let boy = d.double(forKey: "boy") 
      let medeniDurum = d.bool(forKey: "medeniDurum") 
      let liste = d.array(forKey: "liste") as? [String] ?? [String]()
      let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
      
      print(ad)
      print(yas)
      print(boy)
      print(medeniDurum)
      print(liste[0])
      print(dict["16"]!)
      
      // Veri Silme
      // d.removeObject(forKey: "ad")
      // let adc = d.string(forKey: "ad") ?? "isim yok"
      // print(adc)
      
      // Veri Güncelleme
      d.set("yeni Ahmet", forKey: "ad")
      let adx = d.string(forKey: "ad") ?? "isim yok"
      print(adx)
      
   }


}

