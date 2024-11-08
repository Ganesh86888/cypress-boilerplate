import SignUpPage from './SignUpPage';

const domLocator = require('../testdata/domLocator.json');
const dom = domLocator.homePage;
class HomePage{

    verifyHomePage(){
        cy.get(dom.createAccount).should('be.visible')
        return this;
    }

    clickSignUpButton(){
        cy.get(dom.createAccount).click()
        return new SignUpPage;
    }
    clickSignInButton(){
        cy.get(dom.signinAccount).click()
        return new SignUpPage;
    }
}
export default HomePage;