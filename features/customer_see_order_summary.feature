Feature: Customer can see a summary of their order and total price
  As a customer
  In order to see what I have ordered and a total price
  I would like be able to see a summary on an order details page

  Background:
    Given the following order items exist in the order:
    | name          |   price  |
    | Chicken wings |   45     |
    | Doucle Burger |   50     |

  @googlemap
  Scenario: Customer can access order page to see order summary and total price
    Given I visit the landing page
    And I click on "Order" link
    Then I should be redirected to "orders" page
    And I should see "Order Summary"
    And I should see "Chicken wings" with a price of "45.00 kr"
    And I should see "Double Burger" with a price of "50.00 kr"
    And I should see "Total: 95.00 kr"
