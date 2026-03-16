//
//  RegisterPage.swift
//  EasyBankUITests
//
//  Created by IT Academy - 9 on 16.03.26.
//

import XCTest

class RegisterPage : BaseClass{
    var registerButton : XCUIElement { app.buttons["Register"] }
    var mailField : XCUIElement {app.textFields["Your Email"]}
    var passwordField : XCUIElement {app.secureTextFields["Password"] }
    var repeatPasswordField : XCUIElement {app.secureTextFields["Repeat Password"]}
    var signInButton : XCUIElement {app.buttons["Sign In"]}
}
