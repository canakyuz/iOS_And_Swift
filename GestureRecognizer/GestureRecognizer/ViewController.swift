//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by bcakyz on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {

    var isJames = true
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        if isJames == true {
            imageView.image = UIImage(named: "asımcan")
            myLabel.text = "Asımcan Gündüz"
            isJames = false
        } else {
            imageView.image = UIImage(named: "James")
            myLabel.text = "James Hetfield"
            isJames = true
        }
        
    }

}


