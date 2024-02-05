//
//  ViewController.swift
//  iOS Yasam Dongusu Senaryolari
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      print("viewDidLoad çalıştı")
   }
   
   override func viewWillAppear(_ animated: Bool) {
      print("viewWillAppear çalıştı")
   }
   
   override func viewDidAppear(_ animated: Bool) {
      print("viewDidAppear çalıştı")
   }
   
   override func viewWillDisappear(_ animated: Bool) {
      print("viewWillDisappear çalıştı")
   }
   
   override func viewDidDisappear(_ animated: Bool) {
      print("viewDidDisappear çalıştı")
   }


}

