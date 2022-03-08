//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 문상민 on 2021/11/26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var tf: UITextField!
    
    @IBAction func confirm(_ sender: Any) {
        self.tf.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        self.tf.placeholder = "값을 입력하세요"
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark
        self.tf.enablesReturnKeyAutomatically = true
        self.tf.returnKeyType = UIReturnKeyType.done
        
        self.tf.borderStyle = UITextField.BorderStyle.line
        self.tf.backgroundColor = UIColor(white:0.87, alpha:1.0)
        self.tf.contentVerticalAlignment = .center
        self.tf.contentHorizontalAlignment = .center
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        self.tf.layer.borderWidth = 2.0
        
        self.tf.becomeFirstResponder()
        self.tf.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let text = textField.text {
            print(text)
        }
        return true
    }

}

