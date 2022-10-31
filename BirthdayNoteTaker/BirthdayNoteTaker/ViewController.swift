//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by bcakyz on 30/10/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String  {
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirthay = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthay)"
        }
        
    }

    
    @IBAction func saveClick(_ sender: Any) {
        
        // Veri kaydetme UserDefaults
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        // Stringlerin içinde değişken kullanmak için \() parantezin icine degisken yazilmalidir
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
    }
    
    

}

