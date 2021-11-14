//
//  ViewController.swift
//  SubmitValue
//
//  Created by 문상민 on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var email: UITextField!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true){
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지않음"
        }
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else { return }
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분마다"
    }
    
    @IBAction func onPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest = segue.destination
        
        guard let rvc = dest as? ResultViewController else {return}
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
    }
}

