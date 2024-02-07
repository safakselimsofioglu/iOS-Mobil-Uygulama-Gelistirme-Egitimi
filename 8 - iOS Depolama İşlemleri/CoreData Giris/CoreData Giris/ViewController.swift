//
//  ViewController.swift
//  CoreData Giris
//
//  Created by Şafak Selim Sofioğlu on 7.02.2024.
//

import UIKit
import CoreData

// AppDelegate iOS Uygulamasının davranışlarını yöneten nesnedir.
// AppDelegate, UIApplication ile birlikte çalışarak sistemle bazı etkileşimleri yönetir.
let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
   
   // persistentContainer Core Data ile çalışmak için temel yapıyı sağlar.
   // viewContext veritabanı işlemlerinin gerçekleştirileceği ana bağlamı temsil eder.
   // context değişkeni veri ekleme, silme, güncelleme sorgulama gibi işlemler yapmayı sağlar.
   let context = appDelegate.persistentContainer.viewContext
   
   var kisilerListe = [Kisiler]()

   override func viewDidLoad() {
      super.viewDidLoad()
      
      // veriKaydi()
      
      veriOkuma()
      
      //veriGuncelle()
      
      //veriSil()
      
      //veriOkuma()
      
      //veriOkumaSiralama()
      
      veriOkumaFiltreleme()
      
   }
   
   // FUNC: VERI KAYDET
   func veriKaydi(){
      // context parametresi bu yeni örneğin Core Data bağlamı içinde oluşturulacağını belirtir.
      let kisi = Kisiler(context: context)
      kisi.kisi_ad = "Ece"
      kisi.kisi_yas = 50
      // Core Data'da yapılan değişikliklerin veritabanına kalıcı olarak kaydedilmesini sağlar.
      appDelegate.saveContext()
   }
   
   // FUNC: VERI OKU
   func veriOkuma(){
      do{
         // context.fetch ile sorgu getiriyoruz.
         // Kisiler.fetchRequest()'de where şartının sağladığını sağlıyor.
         kisilerListe = try context.fetch(Kisiler.fetchRequest())
      }catch{
         print("Veri okurken hata alındı.")
      }
      
      for k in kisilerListe{
         print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
      }
   }
   
   // FUNC: VERI SIL
   func veriSil(){
      let kisi = kisilerListe[3]
      context.delete(kisi)
      appDelegate.saveContext()
   }
   
   // FUNC: VERI GUNCELLE
   func veriGuncelle(){
      let kisi = kisilerListe[0]
      kisi.kisi_ad = "Harun"
      kisi.kisi_yas = 35
      appDelegate.saveContext()
   }
   
   // FUNC: VERI SIRALA
   func veriOkumaSiralama(){
      let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
      let sort = NSSortDescriptor(key: #keyPath(Kisiler.kisi_yas), ascending: true)
      fetchRequest.sortDescriptors = [sort]
      
      do{
         kisilerListe = try context.fetch(fetchRequest)
      }catch{
         print("Veri okurken hata oluştu")
      }
      
      for k in kisilerListe{
         print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
      }
   }
   
   // FUNC:VERI FILTRELEME
   func veriOkumaFiltreleme(){
      let fetchRequest: NSFetchRequest<Kisiler> = Kisiler.fetchRequest()
      fetchRequest.predicate = NSPredicate(format: "kisi_yas == %i", 35)
      
      do{
         kisilerListe = try context.fetch(fetchRequest)
      }catch{
         print("Veri filtrelerken hata oluştu")
      }
      
      for k in kisilerListe{
         print("Ad: \(k.kisi_ad!) - Yaş: \(k.kisi_yas)")
      }
   }
   
}

