//
//  Constants.swift
//  EasyBankUITests
//
//  Created by IT Academy - 9 on 16.03.26.
//

import Foundation

func generateFakeEmail() -> String {
    let letters = "abcdefghijklmnopqrstuvwxyz"
    let domains = ["gmail.com", "yahoo.com", "outlook.com", "example.com"]
    
    let nameLength = Int.random(in: 5...10)
    let name = String((0..<nameLength).map { _ in letters.randomElement()! })
    
    let number = Int.random(in: 10...999)
    let domain = domains.randomElement()!
    
    return "\(name)\(number)@\(domain)"
}

class Constants {

    
    static let incorrectEmail = "giorgi#mail.com"
    static let strongPassword = "Giorgigiorgi123!"
    static let correctEmail = "giorgikazi@mail.com"
    static let weakPassword = "123"
    static let freshMail = generateFakeEmail()
}
