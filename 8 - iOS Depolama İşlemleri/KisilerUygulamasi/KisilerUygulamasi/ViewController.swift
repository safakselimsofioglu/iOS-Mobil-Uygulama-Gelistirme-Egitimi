//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Şafak Selim Sofioğlu on 7.02.2024.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var searchBar: UISearchBar!
   @IBOutlet weak var kisilerTableView: UITableView!
   
   var liste = [String]()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      liste = ["Ahmet", "Ece", "Zeynep", "Mehmet", "Talat"]
      
      kisilerTableView.delegate = self
      kisilerTableView.dataSource = self
      
      searchBar.delegate = self
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "toDetay" {
         
      }
      
      if segue.identifier == "toGuncelle" {
         
      }
   }
   
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   func numberOfSections(in tableView: UITableView) -> Int {
      return 1
   }
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return liste.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "kisiHucre", for: indexPath) as! KisiHucreTableViewCell
      cell.kisiYaziLabel.text = liste[indexPath.row]
      return cell
   }
   
   func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            
      let silAction = UIContextualAction(style: .destructive, title: "Sil"){ (contextualAction, view, boolValue) in
         print("Sil Tıklandı \(self.liste[indexPath.row])")
      }
      
      let guncelleAction = UIContextualAction(style: .normal, title: "Güncelle"){ (contextualAction, view, boolValue) in
         print("Güncelle Tıklandı \(self.liste[indexPath.row])")
         self.performSegue(withIdentifier: "toGuncelle", sender: indexPath.row)
      }
      
      return UISwipeActionsConfiguration(actions: [silAction, guncelleAction])
      
   }
   
}

extension ViewController: UISearchBarDelegate {
   
   func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      print("Arama sonuç: \(searchText)")
   }
   
}
