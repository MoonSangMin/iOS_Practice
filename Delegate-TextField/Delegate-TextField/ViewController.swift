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
        self.tf.keyboardType = UIKeyboardType.alphabet
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark
        self.tf.returnKeyType = UIReturnKeyType.join
        self.tf.enablesReturnKeyAutomatically = true
        
        self.tf.borderStyle = UITextField.BorderStyle.line
        self.tf.backgroundColor = UIColor(white:0.87, alpha:1.0)
        self.tf.contentVerticalAlignment = .center
        self.tf.contentHorizontalAlignment = .center
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        self.tf.layer.borderWidth = 2.0
        
        self.tf.becomeFirstResponder()
        self.tf.delegate = self
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 시작됩니다.")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다.")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        print("텍스트 필드의 내용이 \(string)으로 변경됩니다.")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("텍스트 필드의 리턴키가 눌려졌습니다")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다.")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 종료되었습니다.")
    }
}
