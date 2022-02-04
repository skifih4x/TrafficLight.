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
        
    }
    @IBAction func startButtonAction() {
    }
    
}

