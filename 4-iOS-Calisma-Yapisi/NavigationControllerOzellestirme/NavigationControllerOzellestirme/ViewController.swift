//
//  ViewController.swift
//  NavigationControllerOzellestirme
//
//  Created by Şafak Selim Sofioğlu on 3.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.navigationItem.title = "Başlık"
      self.navigationItem.prompt = "Açıklama"
      
      
      navigationController?.navigationBar.prefersLargeTitles = true
      
      
      let appearance = UINavigationBarAppearance()
      appearance.backgroundColor = UIColor.red
      appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      

      navigationController?.navigationBar.tintColor = UIColor.white
      navigationController?.navigationBar.barStyle = .default
      navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.blue]
      
      
      navigationController?.navigationBar.standardAppearance = appearance
      navigationController?.navigationBar.compactAppearance = appearance
      navigationController?.navigationBar.scrollEdgeAppearance = appearance
      
   }

   @IBAction func buttonEkle(_ sender: Any) {
      print("Ekle tıklandı")
   }
   
}

