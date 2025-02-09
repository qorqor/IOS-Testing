//
//  EasyBankUITests.swift
//  EasyBankUITests
//
//  Created by lmosakhlishvili on 10.02.25.
//

import XCTest

class EasyBankUITests: XCTestCase {
    let pageClasss = PageClasss()
    

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        var studentOffer: XCUIElement { app.staticTexts["Student Plan"] }
        var logInBtn: XCUIElement { app.buttons["Log In"] }
        
        app/*@START_MENU_TOKEN@*/.buttons["Log In"].staticTexts["Log In"]/*[[".buttons[\"Log In\"].staticTexts[\"Log In\"]",".staticTexts[\"Log In\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.tap()
        
        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.textFields["Your Email"].tap()
        
        
        
        let passwordSecureTextField = elementsQuery.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("lasha@mai.com")
        
    }
}
