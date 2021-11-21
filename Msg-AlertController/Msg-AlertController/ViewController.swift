//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by 문상민 on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var result: UILabel!
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel) { (_) in
            self.result.text = "취소 버튼을 클릭했습니다."
        }
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            self.result.text = "확인 버튼을 클릭했습니다."
        }
        let exec = UIAlertAction(title: "실행", style: .destructive) { (_) in
            self.result.text = "실행 버튼을 클릭했습니다."
        }
        let stop = UIAlertAction(title: "중지", style: .default) { (_) in
            self.result.text = "중지 버튼을 클릭했습니다."
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        self.present(alert, animated: false)
    }
    
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store에 로그인"
        let message = "사용자의 Apple ID example@naver.com의 암호를 입력하십시오."
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default){ (_) in
            if let tf = alert.textFields?[0] {
                print("입력된 값은 \(tf.text!) 입니다.")
            }
            else {
                print("입력된 값이 없습니다.")
            }
        }
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "암호를 입력하세요"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: false)
    }
    
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) { (_) in
            let loginID = alert.textFields?[0].text
            let loginPW = alert.textFields?[1].text
            
            if loginID == "example" && loginPW == "1234" {
                self.result.text = "로그인 성공"
            } else {
                self.result.text = "아이디 또는 비밀번호가 일치하지 않습니다."
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "아이디를 입력하세요"
            tf.isSecureTextEntry = false
        })
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "비밀번호를 입력하세요"
            tf.isSecureTextEntry = true
        })
        
        self.present(alert, animated: false)
    }
}

