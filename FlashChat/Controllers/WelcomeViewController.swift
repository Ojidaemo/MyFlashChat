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
        titleLabel.text = "⚡️FlashChat"
        
//        // adding animation to Label using for in loop
//        titleLabel.text = ""
//        var characterIndex = 0.0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { timer in
//                self.titleLabel.text?.append(letter)
//            }
//            characterIndex += 1
//        }

       
    }
    

}
