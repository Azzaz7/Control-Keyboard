//
//  ViewController.swift
//  Sallary_swift2
//
//  Created by azzaz on 3/21/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var objManger = Manager()
    var objEmployee = Employee()
    
    
    @IBOutlet weak var textFieldEnterSalare: UITextField!
  
    
    @IBOutlet weak var label2ShowSalry: UILabel!
    
    
    @IBAction func button2employee(_ sender: Any) {
        let num = NSCharacterSet.decimalDigits.inverted
        textFieldEnterSalare.resignFirstResponder()
        if !(textFieldEnterSalare.text?.isEmpty)! &&
            textFieldEnterSalare.text?.rangeOfCharacter(from : num  ) == nil
     {
            
            let salary = Double( textFieldEnterSalare.text!)
            let res = objEmployee.getSalary(sall: salary!)
            label2ShowSalry.text = String (res)
        }
        else
        {
            label2ShowSalry.text = "Plz Enter correct salary"
        }
    }
    
    @IBAction func button2Manger(_ sender: Any) {
        textFieldEnterSalare.resignFirstResponder()

        let num = NSCharacterSet.decimalDigits.inverted

        
        textFieldEnterSalare.resignFirstResponder()
        if !(textFieldEnterSalare.text?.isEmpty )! &&
            textFieldEnterSalare.text?.rangeOfCharacter(from : num  ) == nil

            
        {
            
            let salary = Double( textFieldEnterSalare.text!)
            let res = objManger.getSalary(sall: salary!)
            label2ShowSalry.text = String (res)
            
        }
        else
        {
            label2ShowSalry.text = "Plz Enter correct salary"
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

