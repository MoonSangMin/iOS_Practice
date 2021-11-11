//
//  ViewController.swift
//  TestApp
//
//  Created by 문상민 on 2021/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myname(_ sender: Any) {
        self.uiTitle.text = "Moon Sangmin"
    }
    
}

