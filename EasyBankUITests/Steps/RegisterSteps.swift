//
//  RegisterSteps.swift
//  EasyBankUITests
//
//  Created by IT Academy - 9 on 16.03.26.
//

import XCTest

class RegisterSteps : RegisterPage{
    
    func tapRegisterButton(){
        registerButton.tap()
    }
    
    func enterRegistrationMail(){
        mailField.tap()
        mailField.typeText(Constants.freshMail)
    }
    
    func enterRegistrationPassword(){
        passwordField.tap()
        passwordField.typeText(Constants.strongPassword)
    }
    
    func enterRegistrationRepeat(){
        repeatPasswordField.tap()
        repeatPasswordField.typeText(Constants.strongPassword)
    }
    
    func tapSigninButton(){
        sleep(1)
        signInButton.press(forDuration: 0.5)
        signInButton.press(forDuration: 0.5)
    }
    
    func signOut(){
        app.navigationBars["Home"].children(matching: .button).element.tap()
        app.alerts["Logging Out"].scrollViews.otherElements.buttons["Yes"].tap()
        
    }
    
}
