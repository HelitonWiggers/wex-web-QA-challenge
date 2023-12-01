Feature: User Logout and Navigation

@logout
Scenario: User logs out and verifies redirection to the login page
    Given the user is logged in and on the Saucedemo product page
    When the user logs out
    Then the user should be redirected to the login page
