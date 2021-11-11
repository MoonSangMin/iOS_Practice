//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 문상민 on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveByNavi(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else{
            return
        }
        
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
}

