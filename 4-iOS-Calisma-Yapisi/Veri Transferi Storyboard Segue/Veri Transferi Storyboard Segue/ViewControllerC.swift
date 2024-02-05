//
//  ViewControllerC.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewControllerC: UIViewController {
   
   @IBOutlet weak var etiketC: UILabel!
   
   var mesajC: String?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      etiketC.text = mesajC!
      
   }
   
}
