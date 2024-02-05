//
//  ViewControllerC.swift
//  Veri Transferi Yaygin Yontem
//
//  Created by Şafak Selim Sofioğlu on 2.02.2024.
//

import UIKit

class ViewControllerC: UIViewController {
   
   @IBOutlet weak var etiketC: UILabel!
   
   var mesajC: String?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      etiketC.text = mesajC
      
      
      // Do any additional setup after loading the view.
   }
   
   
   /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    }
    */
   
}
