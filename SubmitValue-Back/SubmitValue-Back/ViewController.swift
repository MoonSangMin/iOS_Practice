//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 문상민 on 2021/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email"){
            resultEmail.text = email
        }
        
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "갱신하지않음")
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
    }
}

