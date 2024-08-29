/*
 * For a detailed explanation regarding each configuration property, visit:
 * https://jestjs.io/docs/configuration
 */

module.exports = {
  verbose: true,
  coverageProvider: "v8",
  roots: [
    "spec/javascript"
  ],
  moduleDirectories: ['node_modules', 'app/javascript', 'spec/javascript']
};
