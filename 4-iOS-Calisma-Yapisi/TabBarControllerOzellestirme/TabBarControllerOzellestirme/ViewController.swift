//
//  ViewController.swift
//  TabBarControllerOzellestirme
//
//  Created by Şafak Selim Sofioğlu on 3.02.2024.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      
      if let tabItems = tabBarController?.tabBar.items {
         let item = tabItems[0]
         item.badgeValue = "3"
      }
      
      
      
      let appearance = UITabBarAppearance()
      appearance.backgroundColor = UIColor.systemIndigo
      
      renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
      renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
      renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
      
      tabBarController?.tabBar.standardAppearance = appearance
      tabBarController?.tabBar.scrollEdgeAppearance = appearance
      
   }
   
   func renkDegistir(itemAppearance: UITabBarItemAppearance){
      // Seçili Durum
      itemAppearance.selected.iconColor = UIColor.systemOrange
      itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
      itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
      
      // Seçili Olmayan Durum
      itemAppearance.normal.iconColor = UIColor.white
      itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
      itemAppearance.normal.badgeBackgroundColor = UIColor.systemGray
   }


}

