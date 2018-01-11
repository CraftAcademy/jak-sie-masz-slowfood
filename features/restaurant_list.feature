Feature: User can see a list of restaurants on the landing page
  As a user
  In order to choose a restaurant
  I would like to see a list of restaurants on the landing page

  Background:
    Given the following restaurants exist
      |name             |
      |Thomas Kebabrulle|
      |Oliver's Burger  |
      |Borat's Palace   |

  Scenario:
    When I visit the landing page
    Then I should see "Thomas Kebabrulle"
    And I should see "Oliver's Burger"
    And I should see "Borat's Palace"
    When I click on "Show page" by "Thomas Kebabrulle"
    Then I should be on the "Thomas Kebabrulle" show page
