//
//  ViewController.swift
//  ImageView
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var imageView: UIImageView!

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   @IBAction func buttonOne(_ sender: Any) {
      imageView.image = UIImage(named: "resim")
   }
   
   @IBAction func buttonTwo(_ sender: Any) {
      imageView.image = UIImage(named: "stevejobs")
   }
   
}

