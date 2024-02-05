//
//  ViewController.swift
//  Veri Transferi Yaygin Yontem
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
   

   @IBAction func gonderB(_ sender: Any) {
      
      let alinanVeri = girdiAlani.text!
      
      performSegue(withIdentifier: "aTOb", sender: alinanVeri)
      
   }
   
   
   @IBAction func gonderC(_ sender: Any) {
      
      let alinanVeri = girdiAlani.text!
      
      performSegue(withIdentifier: "aTOc", sender: alinanVeri)
      
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      
      if segue.identifier == "aTOb" {
         print("B'ye geçiş oldu.")
         
         if let veri = sender as? String {
            let gidilecekVC = segue.destination as! ViewControllerB
            
            gidilecekVC.mesajB = veri
         }
      }
      
      if segue.identifier == "aTOc" {
         print("C'ye geçiş oldu.")
         
         if let veri = sender as? String {
            let gidilecekVC = segue.destination as! ViewControllerC
            
            gidilecekVC.mesajC = veri
         }
      }
      
   }
   
}

