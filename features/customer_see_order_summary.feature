Feature: Customer can see a summary of their order and total price
  As a customer
  In order to see what I have ordered and a total price
  I would like be able to see a summary on an order details page

  Background:
    Given the following restaurants exist
      | name              | street_address    | city     |
      | Oliver's Burger   | Kungsgatan 1      | Göteborg |

    Given the following products exist within a specific restaurant and category
      | name              | restaurant      | category    | menu       | price |
      | Chicken wings     | Oliver's Burger | Starter     | Lunch      | 45    |
      | Double Burger     | Oliver's Burger | Main Course | À la carte | 50    |


  @googlemap
  Scenario: Customer can access order page to see order summary and total price
    Given I visit the landing page
    And I click on "Order" link
    Then I should be redirected to "Order" page
    And I should see "Ordered Items"
    And I should see "Chicken wings" with a price of "45.00 kr"
    And I should see "Double Burger" with a price of "50.00 kr"
    And I should see "Total: 95.00 kr"
