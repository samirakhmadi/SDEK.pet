//
//  SecondViewController.swift
//  SDEK
//
//  Created by Family on 09.06.2021.
//

import UIKit


class SecondViewController: UIViewController {
    
    var resultLable = "0.0"
    
    @IBOutlet weak var lableName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lableName.text = String (format: "%.1f.", resultLable)
    }
   
}
