//
//  ViewController.swift
//  TrafficLight
//
//  Created by Сергей Крутов on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.alpha = 0.3
        yellowSignalView.alpha = 0.3
        greenSignalView.alpha = 0.3
    }

    @IBAction func startButtonDidTab(_ sender: UIButton) {
        counter += 1
        switch counter {
        case 1:
            redSignalView.alpha = 1
        case 2:
            redSignalView.alpha = 0.3
            yellowSignalView.alpha = 1
        case 3:
            yellowSignalView.alpha = 0.3
            greenSignalView.alpha = 1
        default:
            break
        }
    }
    
}

