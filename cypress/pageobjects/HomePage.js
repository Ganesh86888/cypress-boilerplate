
class HomePage{

    verifyGmailText(locator,testdata){
        cy.get(locator).should('have.text',testdata)
        return this;
    }

    verifyUrl(testdata){
        cy.url().should('include',testdata)
        return this;
    }
}
export default HomePage;