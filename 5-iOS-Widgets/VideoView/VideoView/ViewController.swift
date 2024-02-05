//
//  ViewController.swift
//  VideoView
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   @IBAction func basla(_ sender: Any) {
      
      if let dosyaYolu = Bundle.main.path(forResource: "video", ofType: "mp4"){
         
         let oynatici = AVPlayer(url: URL(fileURLWithPath: dosyaYolu))
         
         let oynaticiKontrol = AVPlayerViewController()
         
         oynaticiKontrol.player = oynatici
         
         present(oynaticiKontrol, animated: true){
            oynatici.play()
         }
         
      }
      
   }
   
}

