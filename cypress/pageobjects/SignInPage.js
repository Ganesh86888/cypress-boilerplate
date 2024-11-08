const domLocator = require('../testdata/domLocator.json');
const dom = domLocator.SignInPage;
class SignInPage{

    verifySigninPage(){
        cy.get(dom.signInPageTitle).should('be.visible')
        cy.get(dom.signInPageTitle).should('contain',"Customer Login")
    }

    enterMailId(value){
        cy.get(dom.emailAddressField).type(value)
        return this;
    }

    enterPassword(value){
        cy.get(dom.passwordField).type(value)
        return this;
    }

    clickSignInButton(){
        cy.get(dom.signInButton).click()
    }
    verifyCustomerDetails(){
        cy.get(dom.verifyCustomerName).should('be.visible')
    }
    
}
export default SignInPage;