Feature: Smoke Test to verify that the framework is installed and operational.
    Load default browser and navigate to Google website. Perform a search and select the first result 
    returned.

Scenario: Search for me
    Given I navigate to Westpac Home Page 
    And select "KiwiSaver Calculators" from "KiwiSaver" main menu
    Then the "KiwiSaver Calculators" page loads
    And click on "Click here to get started."
    Then the "KiwiSaver Retirement Calculator" page loads
