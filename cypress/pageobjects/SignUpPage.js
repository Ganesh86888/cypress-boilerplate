const domLocator = require('../testdata/domLocator.json');
const dom = domLocator.SignupPage;
class SignUpPage{

    verifySignupPage(){
        cy.get(dom.createAccountTitle).should('be.visible')
        cy.get(dom.createAccountTitle).should('contain',"Create New Customer Account")
    }

    enterFirstName(value){
        cy.get(dom.firstNameTextBox).type(value)
        return this;
    }

    enterLastName(value){
        cy.get(dom.lastNameTextBox).type(value)
        return this;
    }

    enterMailId(value){
        cy.get(dom.emailAddressField).type(value)
        return this;
    }

    enterPassword(value){
        cy.get(dom.passwordField).type(value)
        return this;
    }
    enterConfirmPassword(value){
        cy.get(dom.passwordConfirmationField).type(value)
        return this;
    }
    clickCreateButton(){
        cy.get(dom.createButton).click()
    }
    verifyErrorMessage(errorName,errorMessage){
        if(errorName === 'first name'){
            cy.get(dom.errorMessage.firstNameError).should('contain',errorMessage)
        }
        if(errorName === 'last name'){
            cy.get(dom.errorMessage.lastNameError).should('contain',errorMessage)
        }
        if(errorName === 'emailId'){
            cy.get(dom.errorMessage.emailAddressError).should('contain',errorMessage)
        }
        if(errorName === 'password'){
            cy.get(dom.errorMessage.passwordError).should('contain',errorMessage)
        }
        if(errorName === 'passwordMeter'){
            cy.get(dom.errorMessage.passwordMeterLabel).should('contain',errorMessage)
        }
        if(errorName === 'confirmPassword'){
            cy.get(dom.errorMessage.confirmPasswordError).should('contain',errorMessage)
        }
    }
    
}
export default SignUpPage;