//
//  ViewController.swift
//  UserDefault Login Uygulamasi
//
//  Created by Şafak Selim Sofioğlu on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var textfieldKullaniciAdi: UITextField!
   
   @IBOutlet weak var textfieldSifre: UITextField!
   
   let d = UserDefaults.standard
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      
      // Kullanıcı Adı Textfield'ını okuyoruz.
      let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
      
      // Şifre Textfield'ını okuyoruz.
      let s = d.string(forKey: "sifre") ?? "bos"
      
      // Eğer ka ve s için veri kaydı yapılmışsa girisToAnasayfa'ya git.
      if ka != "bos" && s != "bos" {
         performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
      }
      
   }

   @IBAction func girisYap(_ sender: Any) {
      
      if let ka = textfieldKullaniciAdi.text, let s = textfieldSifre.text {
         
         if ka == "admin" && s == "123456" {
            // Veri kaydı yapıyoruz.
            d.set(ka, forKey: "kullaniciAdi")
            d.set(s, forKey: "sifre")
            
            // Sayfa geçişi yapıyoruz.
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            
         }else{
            print("Hatalı Giriş")
         }
      }
   }
   
   // Arayüz gözüktüğü anda NavigationBar'ı yok ediyoruz.
   override func viewWillAppear(_ animated: Bool) {
      navigationController?.isNavigationBarHidden = true
   }
   
   // Başka sayfaya geçiş yaptığımız zaman barı tekrar göstermeliyiz.
   override func viewWillDisappear(_ animated: Bool) {
      navigationController?.isNavigationBarHidden = false
   }
   
}

