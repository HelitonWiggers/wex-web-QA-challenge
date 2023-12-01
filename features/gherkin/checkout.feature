Feature: Product Interaction and Checkout

Background:
    * the user is logged in and on the Saucedemo product page
    * the user adds a product to the shopping cart

@successful_checkout
Scenario: User adds a product to the cart and completes the checkout process
    When provides valid shipping and payment information
    Then the user should successfully complete the checkout process

@invalid_checkout
Scenario: User adds a product to the cart and doesn't complete the checkout process
    When provides missing shipping and payment information
    Then the user must not complete the checkout process