 




import XCTest

class Test: LoginSteps {
    let RegSteps = RegisterSteps()
    
    func testloginWithBadlyFormattedMail(){
        tapLoginButton()
        enterLoginEmail(email: Constants.incorrectEmail)
        enterLoginPassword(password: Constants.strongPassword)
        tapLoginButton()
        validateFormattingError()
        
    }
    
    func testloginWithWeakPassword(){
        tapLoginButton()
        enterLoginEmail(email: Constants.correctEmail)
        enterLoginPassword(password: Constants.weakPassword)
        tapLoginButton()
        validatePasswordError()
        
    }
    
    func testRegisterFreshAccount(){
        //Register
        RegSteps.tapRegisterButton()
        RegSteps.enterRegistrationMail()
        RegSteps.enterRegistrationPassword()
        RegSteps.enterRegistrationRepeat()
        RegSteps.tapRegisterButton()
        RegSteps.tapSigninButton()
        //Login
        enterLoginEmail(email: Constants.freshMail)
        enterLoginPassword(password: Constants.strongPassword)
        tapLoginButton()
        //Log Out
        RegSteps.signOut()
        
    }
    
    
    
    
}


