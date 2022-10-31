//
//  ViewController.swift
//  AlertProject
//
//  Created by bcakyz on 31/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username Not Found")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Not Found")
        } else if password2Text.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Do Not Match")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Okey", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Button")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

