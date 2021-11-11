//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by 문상민 on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        NSLog("Segueway Identifier: \(segue.identifier!)")
    }

}

