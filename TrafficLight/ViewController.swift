//
//  ViewController.swift
//  TrafficLight
//
//  Created by Артем Орлов on 04.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        
        redColorView.layer.cornerRadius = redColorView.frame.size.height / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.size.height / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.size.height / 2
        
    }
    @IBAction func startButtonAction() {
       
    }
    
}

