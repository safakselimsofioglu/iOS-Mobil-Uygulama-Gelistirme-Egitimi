//
//  ViewController.swift
//  NavigationControllerCalismasi
//
//  Created by Şafak Selim Sofioğlu on 3.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.navigationItem.title = "Yeni Başlık"
      self.navigationItem.prompt = "Yeni Açıklama"
      
      self.navigationItem.largeTitleDisplayMode = .always
      
      // let resim = UIImage(named: "navBaslik")
      // self.navigationItem.titleView = UIImageView(image: resim)
      
   }

   @IBAction func playTikla(_ sender: Any) {
      print("Play Tıklandı")
   }
   
   
   @IBAction func kalpTikla(_ sender: Any) {
      print("Kalp tıklandı.")
   }
   
   @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
      switch sender.selectedSegmentIndex {
      case 0:
         print("First tıklandı")
      case 1:
         print("Second tıklandı")
      default:
         break
      }
   }
}

