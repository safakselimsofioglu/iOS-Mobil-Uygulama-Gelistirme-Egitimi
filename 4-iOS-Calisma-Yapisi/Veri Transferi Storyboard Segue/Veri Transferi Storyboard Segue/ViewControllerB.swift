//
//  ViewControllerB.swift
//  Veri Transferi Storyboard Segue
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewControllerB: UIViewController {
   
   @IBOutlet weak var etiketB: UILabel!
   
   var mesajB: String?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      etiketB.text = mesajB!
   }
   
   
   
}
