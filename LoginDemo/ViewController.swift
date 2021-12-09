//
//  ViewController.swift
//  LoginDemo
//
//  Created by Mac-145-Pranay-Pawar on 09/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passowordTextField: UITextField!
    
    let emailRegex = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
    let passwordRegex = "[0-9a-zA-Z]{6,}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        //username =>  email
        //password => more than 6 characters
        
        
        guard let userNameText = userNameTextField.text, (userNameText.range(of: emailRegex, options: .regularExpression, range: nil, locale: nil) != nil) else {
            
            showAlert("Please enter valid email")
            return
        }
        
        guard let passwordText = passowordTextField.text, (passwordText.range(of: passwordRegex, options: .regularExpression, range: nil, locale: nil) != nil) else {
        
            showAlert("Please enter password having more than 6 characters")
            return
       }
        
    }
    
    func showAlert(_ errorMessage: String) {
        
        let alertController = UIAlertController(title: "", message: errorMessage, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alertController.addAction(action)
        
        self.navigationController?.present(alertController, animated: true, completion: nil)
        
    }
    
}

