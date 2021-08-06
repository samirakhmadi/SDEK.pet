//
//  ViewController.swift
//  SDEK
//
//  Created by Samir Akhmadi on 06.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var cdekValue = "0.0"

    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightOutlet: UISlider!
    @IBOutlet weak var heightOutlet: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value) + String(" см")
        
    }
    @IBAction func hightSlider(_ sender: UISlider) {
        let hight = String(format: "%.1f", sender.value)
        heightLable.text = "\(hight) см"
    
    }
    
    @IBAction func Result(_ sender: UIButton) {
        let weight = weightOutlet.value
        let height = heightOutlet.value
        
        let cdek = weight * height
        cdekValue = String(format: "%.1f", cdek)
       
        self.performSegue(withIdentifier: "goToResult", sender: self)
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = cdekValue
        }
    }


}

