//
//  LoginPresenter.swift
//  LoginMVP
//
//  Created by Nilesh Jarad on 23/08/16.
//  Copyright © 2016 Nilesh Jarad. All rights reserved.
//

import Foundation

public protocol LoginView : NSObjectProtocol{
    func showErrorForUserName(errorMessage: String)
    func showErrorForPassword(errorMessage: String)
    func showSuccessMessage(success: String)
    
}

class LoginPresenter {
    var loginView :LoginView
    
    init(loginView:LoginView){
        self.loginView = loginView;
    }
    
    func doValidation(userName : String , pasword :String) {
        if userName != "NIL" {
            loginView.showErrorForUserName("Your user name is incorrect")
            return
        }else if pasword != "TDD" {
            loginView.showErrorForPassword("Your password is inccorect")
            return
        }
        
        loginView.showSuccessMessage("Login Successful")
        
    }
    
    
}
