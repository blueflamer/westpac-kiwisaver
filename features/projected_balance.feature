Feature: Feature name

    Feature Description


Background: 
    Given I navigate to Kiwisaver calculator


Scenario Outline: title
    Given a user of age and employment and salary who makes contribution and chooses risk profile
        |   age |   employment      |   salary  |   contribution    |   profile     |   projected   |
        |   30  |   Employed        |   82000   |   4%              |   Defensive   |   436,365     |
    When these options are set in the Kiwisaver calculator
    And I click on "View your KiwiSaver retirement projections"
    Then the correct projected balance is displayed




