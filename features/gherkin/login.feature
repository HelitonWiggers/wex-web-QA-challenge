Feature:Test User Authentication - Successful Login and Invalid Login

Background:
    * the user is on the Saucedemo login page

@valid_login
Scenario Outline: Scenario Outline name: User successfully logs in with valid credentials
    When the user enters a valid "<username>" credencials
    Then the user should be redirected to the product page
    
    Examples:
        | username      |
        | standard_user |
        | problem_user  |
        | visual_user   |

@invalid_login
Scenario: User enters incorrect password
    When the user enters a valid username and incorrect password
    Then the user should see an error message indicating invalid login credentials
    