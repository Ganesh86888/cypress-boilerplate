import { describe } from 'mocha';
import HomePage from '../pageobjects/HomePage';
const dataProvider = require('../testdata/dataProvider.json')
const domLocator = require('../testdata/domLocator.json')
const home = new HomePage();
const dom = domLocator.homePage
const data = dataProvider.homePage

describe('This is the cypress basic test setup for beginners',()=>{
    beforeEach(function(){
        cy.visit(Cypress.env('url'))
    })

    it('This is the first test case',()=>{
        cy.visit(Cypress.env('url')+'/gmail/about/')
        home.verifyGmailText(dom.gmailText,data.gmailText)
    })

    it('This is the second test case',()=>{
        cy.visit(Cypress.env('url')+'/gmail/about/')
        home.verifyUrl(data.gmailUrl)
    })
})