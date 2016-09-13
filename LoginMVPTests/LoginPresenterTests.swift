//
//  LoginPresenterTests.swift
//  LoginMVP
//
//  Created by Nilesh Jarad on 28/08/16.
//  Copyright © 2016 Nilesh Jarad. All rights reserved.
//

import XCTest
@testable import LoginMVP

class LoginPresenterTests: XCTestCase {
    var loginPresenter : LoginPresenter!
    var loginViewMocked : LoginViewMocked!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        loginViewMocked = LoginViewMocked()
        loginPresenter = LoginPresenter(loginView: loginViewMocked)
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        loginPresenter.doValidation("NIL", pasword: "TDD")
        
        XCTAssertTrue(loginViewMocked.showSuccessMessage)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    //# mock object
    
    class LoginViewMocked: LoginViewController {
        var showSuccessMessage : Bool = false
        
        override func showErrorForUserName(errorMessage: String){}
        override func showErrorForPassword(errorMessage: String){}
        
        override func showSuccessMessage(success: String){
            showSuccessMessage = true
        }
    }
    
    
}
