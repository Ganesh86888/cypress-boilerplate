**Cypress Automation Framework (pronounced CAF) is the node based automation framework for testing Web based applications.****

Please take a look at https://docs.cypress.io/guides/ , https://www.cypress.io/how-it-works for more info about Cypress

_**Run Cypress in TEST environment:**_
1) Install node
2) Fork + clone this repo to your local
3) Open terminal and move to repo directory
4) npm install (This will install/update the node module and update the configs in the package.json

_**Run HeadLess specific test:**_
1) npx cypress run --spec "cypress/integration/xxxx.js"
2) npx cypress run (This will start running all the tests in e2e folder)

**_Run headed browser specific test:_**
1) npx cypress open --spec "cypress/integration/xxxx.js"
2) npx cypress open (This will start running all the tests in e2e folder)

**Intellisense** - VS code (include this in .js files to make the cypress code readable ): ///

