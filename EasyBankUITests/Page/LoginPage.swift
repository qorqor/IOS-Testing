//
//  LoginPage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 9 on 16.03.26.
//


import XCTest

class LoginPage: BaseClass {
    
    var loginButton : XCUIElement { app.buttons["Log In"] }
    var mailField : XCUIElement { app.textFields["Your Email"] }
    var passwordField : XCUIElement {app.secureTextFields["Password"] }
    var errorText : XCUIElement { app.staticTexts["The email address is badly formatted."] }
    var malformedText : XCUIElement { app.staticTexts["The supplied auth credential is malformed or has expired."]}
    
    
    
}
