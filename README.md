WEB test challange.

Three test cases were created for a web automation project using the Saucedemo website.
The following tools were used:
- Ruby: Selenium compatible programming language.
- Selenium: Framework used to test web applications and create automated test scripts.
- Cucumber: Cucumber is a software tool that supports behavior-driven development. Cucumber interprets BDD written in Gherkin and transforms it into steps where automation will be implemented.

The following standards were used:
- Page objects pattern: The Page Object Model in Selenium is a design pattern that establishes an object repository for storing all web elements. As we can see in the project files, a "pages" folder was created to store this information. This approach minimizes code duplication and enhances the maintainability of test cases. In the Page Object Model, each web page of an application is treated as a class file.
- Features with BDD and gherkin: Gherkin is a specialized language designed for articulating business behavior without delving into implementation details. By utilizing plain English to describe tests, Gherkin ensures that both technical and non-technical team members can easily comprehend the software's test scenarios and behaviors. Gherkin allows us to craft test cases using BDD (Behavior-Driven Development) within the features like in the path features/bdd folder.
- Feature validations with scenario outline and simple scenarios, including valid and invalid test cases: Scenario outlines come into play when a test needs to be executed several times with varying combinations of values, such as in the valid login test case, where the login was successfully verified with three different usernames.

Starting from the beginning, 3 test cases were written using BDD and Gherkin. One test case for login, one for checkout, and one for logout.
In the login test case, 4 scenarios were validated, including 3 successful login scenarios using a scenario outline and one negative scenario for invalid login.
In the second checkout test case, 2 scenarios were validated. One positive scenario where the entire checkout flow was successfully completed end-to-end, and one error scenario where information was missing for the checkout to be completed.
Finally, the last test case validated 1 successful logout scenario.
In total, there were 7 scenarios with 23 steps in the project, all following automation best practices and clean code principles. For instance, scenario tags were specified in the features to allow running a single isolated scenario if needed, all mapped elements and functions were placed within the "pages" for better organization, and functions could be called in the steps later on, use of background and scenario outline when possible to apply.

Test report result
https://reports.cucumber.io/reports/88cdff4a-9f0e-4986-86c5-88c035d0d22d
