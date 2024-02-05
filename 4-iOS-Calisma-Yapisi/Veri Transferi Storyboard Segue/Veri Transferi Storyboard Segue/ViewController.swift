//
//  ViewController.swift
//  Veri Transferi Storyboard Segue
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
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      let gidecekMesaj = girdiAlani.text!
      
      if segue.identifier == "aTOb" {
         
         let gidilecekVC = segue.destination as! ViewControllerB
         // gidilecek sınıftan nesne oluşturuldu çünkü o sınıftaki değişkene erişmek gerekiyor.
         
         gidilecekVC.mesajB = gidecekMesaj
         
      }
      
      if segue.identifier == "aTOc" {
         
         let gidilecekVC = segue.destination as! ViewControllerC
         
         gidilecekVC.mesajC = gidecekMesaj
         
      }
      
   }


}

