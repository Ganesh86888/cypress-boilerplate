import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'
import HomePage from '../../pageobjects/HomePage'
import SignUpPage from '../../pageobjects/SignUpPage'
import SignInPage from '../../pageobjects/SignInPage'
const homePage = new HomePage()
const signUpPage = new SignUpPage()
const signinPage = new SignInPage()

Given('I am on the home page', () => {
    cy.visit('/')
    homePage.verifyHomePage()
})

When('CLick Signup button',()=>{
    homePage.clickSignUpButton()
})

Then("I am on the Sign up page",()=>{
    signUpPage.verifySignupPage()
})

When('I type in my first name {string}',(value)=>{
    signUpPage.enterFirstName(value)
})

When('I type in my last name {string}', (value) => {
    signUpPage.enterLastName(value)
})

When('I type in my emailId {string}', (value) => {
    signUpPage.enterMailId(value)
})

When('I type in my password {string}', (value) => {
    signUpPage.enterPassword(value)
})

When('I type in my password again {string}', (value) => {
    signUpPage.enterConfirmPassword(value)
})

When('I click on the sign up button',()=>{
    signUpPage.clickCreateButton()
})

Then('Verify {string} error message {string}',(errorName,errorMessage)=>{
    signUpPage.verifyErrorMessage(errorName,errorMessage)
})

When('CLick Signin button',()=>{
    homePage.clickSignInButton()
})

Then("I am on the Sign in page",()=>{
    signinPage.verifySigninPage()
})

When('I type in my email box {string}', (value) => {
    signinPage.enterMailId(value)
})

When('I type in my password box {string}', (value) => {
    signinPage.enterPassword(value)
})

When('I click on the sign in button',()=>{
    signinPage.clickSignInButton()
})

Then('Verify customer details',()=>{
    signinPage.verifyCustomerDetails()
})
