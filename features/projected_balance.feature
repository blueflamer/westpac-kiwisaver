Feature: Users are able to plan their investments 

As a Product Owner I want that the KiwiSaver Retirement Calculator users are able to calculate what their KiwiSaver projected balance would be at retirement.

Background: 
    Given I navigate to Kiwisaver calculator


Scenario: Employed User
    Given a user of age and employment and salary who makes contribution and chooses risk profile
        |   age |   employment      |   salary  |   contribution    |   profile     |   projected   |
        |   30  |   Employed        |   82000   |   4%              |   Defensive   |   436,365     |
    When these options are set in the Kiwisaver calculator
    And I click on "View your KiwiSaver retirement projections"
    Then the correct projected balance is displayed

@smoke
Scenario: Self Employed User
    Given a user of age and employment and salary who makes contribution and chooses risk profile
        |   age |   employment      |   current |   voluntary   |   frequency   |   profile         |   goal     |   projected   |
        |   45  |   Self-employed   |   100000  |   90          |   Fortnightly |   Conservative    |   290000   |    259,581    |
    When these options are set in the Kiwisaver calculator
    And I click on "View your KiwiSaver retirement projections"
    Then the correct projected balance is displayed


Scenario: Not Employed User
    Given a user of age and employment and salary who makes contribution and chooses risk profile
        |   age |   employment      |   current  |   voluntary   |   frequency   |   profile         |   goal       |   projected   |
        |   55  |   Not employed    |   140000   |   10          |   Annually    |   Balanced        |   200000     |   197,679     |
    When these options are set in the Kiwisaver calculator
    And I click on "View your KiwiSaver retirement projections"
    Then the correct projected balance is displayed


