//
//  ViewController.swift
//  Button Label Textfield
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var etiket: UILabel!
   @IBOutlet weak var textView: UITextView!
   @IBOutlet weak var metinGiris: UITextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   @IBAction func degistir(_ sender: Any) {
      
      if let text = textView.text {
         print(text)
      }
      
      if let alinanVeri = metinGiris.text {
         
         if let sayi = Int(alinanVeri) {
            
            etiket.text = String(sayi * 2)
         }
         
      }
   }
   
}

