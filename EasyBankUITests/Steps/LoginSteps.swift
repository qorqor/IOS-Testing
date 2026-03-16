//
//  LoginSteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 9 on 16.03.26.
//

import XCTest

class LoginSteps : LoginPage {
    
    
    func tapLoginButton(){
        loginButton.tap()
    }
    
    func enterLoginEmail(email : String){
        mailField.tap()
        mailField.typeText(email)
    }
    
    func enterLoginPassword(password : String){
        passwordField.tap()
        passwordField.typeText(password)
    }
    
    func validateFormattingError(){
        XCTAssertTrue(errorText.waitForExistence(timeout: 5))
    }
    
    func validatePasswordError(){
        XCTAssertTrue(malformedText.waitForExistence(timeout: 5))
    }
    
}
