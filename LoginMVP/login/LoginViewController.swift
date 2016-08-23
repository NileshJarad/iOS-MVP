//
//  ViewController.swift
//  LoginMVP
//
//  Created by Nilesh Jarad on 06/08/16.
//  Copyright © 2016 Nilesh Jarad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController ,LoginView {
    
    @IBOutlet weak var txtUserPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    
    var loginPresenter : LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginPresenter = LoginPresenter(loginView: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(sender: UIButton) {
        loginPresenter.doValidation(txtUserName.text!, pasword: txtUserPassword.text!)
    }
    
    func showErrorForUserName(errorMessage: String){
        showMessage(errorMessage)
    }
    
    func showErrorForPassword(errorMessage: String){
         showMessage(errorMessage)
    }
    
    func showSuccessMessage(success: String){
         showMessage(success)
    }
    
    
    private func showMessage(msg :String){
        
        let alertView = UIAlertView(title: "Information", message: msg, delegate: nil, cancelButtonTitle: "OK")
        
        alertView.show()
        
    }
    
}

