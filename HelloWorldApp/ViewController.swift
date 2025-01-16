//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Yauheni Yursha on 13/01/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide greeting", 
            for: .normal
        )
    }
    
    private func setupButton(with title: String) ->  UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.4694530964, green: 0.6076230407, blue: 0.9041127563, alpha: 1)   //#colorLiteral(
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        
        return  buttonConfiguration
    }

}

