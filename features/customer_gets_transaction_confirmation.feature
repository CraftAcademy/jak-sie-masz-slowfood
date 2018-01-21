@javascript @googlemap
Feature: Payment confirmation
  As a user
  In order to ascertain that payment was successful
  I would like to see a payment confirmation

Background:
  Given the following restaurants exist
  | name              | street_address    | city     |
  | Oliver's Burger   | Kungsgatan 1      | Göteborg |

  Given the following products exist within a specific restaurant
  | name          | restaurant      | description      | category    | price |
  | Chicken wings | Oliver's Burger | Nice wings       | Starter     | 45    |
  | Double Burger | Oliver's Burger | Tasty fat burger | Main Course | 50    |

  Given I visit the "Oliver's Burger" show page

  Given the following order items exist in the order:
  | name          |
  | Chicken wings |
  | Double Burger |

Scenario: User can access confirmation page after successfully performing a transaction
  Given I click on "Order" link
  And I click on "Pay with Card" button
  And I fill in stripe form field "Email" with "random@random.com"
  And I fill in stripe form field "Card number" with "4242 4242 4242 4242"
  And I fill in stripe form field "MM / YY" with "12/2021"
  And I fill in stripe form field "CVC" with "123"
  And I submit the stripe form
  Then I should be redirected to "confirmation" page
  And I should see "Thanks, you paid" and the total amount should be "95.00 kr"
