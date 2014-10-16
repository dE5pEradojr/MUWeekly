//
//  ViewController.swift
//  MUWeekly
//
//  Created by Funky on 10/16/14.
//  Copyright (c) 2014 Funky. All rights reserved.
//

import UIKit

class LecturesViewController: UIViewController {
                            
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginButton.setTitle("Войти", forState:.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(sender: UIButton) {
        
        println("Логин: \(loginTextField.text), пароль: \(passwordTextField.text)")
        
            }

}

