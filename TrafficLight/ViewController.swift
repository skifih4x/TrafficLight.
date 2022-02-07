//
//  ViewController.swift
//  TrafficLight
//
//  Created by Артем Орлов on 04.02.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = redColorView.frame.width / 2
        greenColorView.layer.cornerRadius = redColorView.frame.width / 2
    }
    
    @IBAction func startButtonAction() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
            
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            currentLight = .green
        case .green:
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.3
            currentLight = .red
        }
    }
}
