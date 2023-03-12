//
//  ViewController.swift
//  FlashChat
//
//  Created by Vitali Martsinovich on 2023-02-26.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // adding animation to Label using CLTypingLabel library
        titleLabel.text = K.appName
       
    }
}
