//
//  ViewController.swift
//  lab3
//
//  Created by Elizaveta Vygovskaia on 2023-02-05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    var step = 1
    
    @IBOutlet weak var btnIncrease: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(counter)"
        
    }

    @IBAction func addOne(_ sender: UIButton) {
        
        counter += step
        label.text = "\(counter)"
    }
    
    
    @IBAction func minusOne(_ sender: UIButton) {
        counter -= step
        label.text = "\(counter)"
    }
    
    @IBAction func clear(_ sender: UIButton) {
        counter = 0
        step = 1
        label.text = "\(counter)"
        btnIncrease.setTitle("Step +\(step)", for: .normal)

        
    }
    
    @IBAction func increaseStep(_ sender: UIButton) {
        step += 1
        sender.setTitle("Step +\(step)", for: .normal)
    }
}

