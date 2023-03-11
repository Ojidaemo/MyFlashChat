//
//  LoginViewController.swift
//  FlashChat
//
//  Created by Vitali Martsinovich on 2023-02-26.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        // login and showing an error if something wrong
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let error = error {
                    let alert = UIAlertController(title: "Error", message: "\(error.localizedDescription)", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Ok", style: .default) { (action) in }
                    alert.addAction(action)
                    self?.present(alert, animated: true)
                } else {
                    self?.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
}
