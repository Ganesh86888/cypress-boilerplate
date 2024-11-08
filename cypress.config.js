const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");

module.exports = defineConfig({
  e2e: {
    baseUrl: "https://magento.softwaretestingboard.com/",
    setupNodeEvents(on, config) {
        on("file:preprocessor", createBundler({plugins: [createEsbuildPlugin.default(config)],}));
        preprocessor.addCucumberPreprocessorPlugin(on, config);
        return config;
    },
    specPattern: "**/*.feature",
    numTestsKeptInMemory: 0
}
})
