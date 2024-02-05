//
//  Kisiler.swift
//  Kod ile Segue Gecisi
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import Foundation

class Kisiler {
   var kisi_id : Int?
   var kisi_ad : String?
   
   init() {
      
   }
   
   init(kisi_id: Int, kisi_ad: String) {
      self.kisi_id = kisi_id
      self.kisi_ad = kisi_ad
   }
}
