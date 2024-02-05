//
//  ViewController.swift
//  Switch Segmented Control
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var uiswitch: UISwitch!
   @IBOutlet weak var uisegmented: UISegmentedControl!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }
   
   @IBAction func tikla(_ sender: Any) {
      print("Switch durum : \(uiswitch.isOn)")
      print("Segmented durum : \(uisegmented.selectedSegmentIndex)")
   }
   
   @IBAction func switchKonumDegistir(_ sender: UISwitch) {
      if sender.isOn {
         print("Switch Açık")
      } else {
         print("Switch Kapalı")
      }
   }
   
   @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
      
      if sender.selectedSegmentIndex == 0 {
         print("Segmented Açık")
      } else {
         print("Segmented Kapalı")
      }
      
   }
}

