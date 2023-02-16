//
//  ViewController.swift
//  Counter
//
//  Created by Anastasiya Sidarovich on 16.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter: Int = 0 {
        didSet {
           updateCounterLabel()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 0
    }

    @IBAction func buttonDidTouch(_ sender: Any) {
        counter += 1
    }
    
    private func updateCounterLabel() {
        counterLabel.text = "Значение счётчика:\n \(counter)"
    }
}

