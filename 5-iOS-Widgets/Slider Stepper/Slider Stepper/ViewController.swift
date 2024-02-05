//
//  ViewController.swift
//  Slider Stepper
//
//  Created by Şafak Selim Sofioğlu on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var sliderLabel: UILabel!
   @IBOutlet weak var slider: UISlider!
   @IBOutlet weak var stepperLabel: UILabel!
   @IBOutlet weak var stepper: UIStepper!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   // Slider Action
   @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
      sliderLabel.text = "Slider : \(Int(sender.value))"
   }
   
   // Stepper Action
   @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
      stepperLabel.text = "Stepper : \(Int(sender.value))"
   }
   
   // Functions
   @IBAction func tikla(_ sender: Any) {
      print("Slider değer : \(Int(slider.value))")
      print("Stepper değer : \(Int(stepper.value))")
   }

   
   
}

