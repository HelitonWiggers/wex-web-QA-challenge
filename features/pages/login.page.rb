 class LoginPage < SitePrism::Page

    set_url 'https://www.saucedemo.com/'
    element :username_field, :id, "user-name"
    element :password_field, :id, "password"
    element :shopping_cart, :id, "shopping_cart_container"
    element :login_button, :id, "login-button"
    element :login_error, :class, "error-button"

    def user_login(username)
        case username
        when "standard_user", "problem_user", "visual_user"
          username_field.set(username)
          password_field.set("secret_sauce")
          login_button.click
        end
    end

    def login_successful
        expect(shopping_cart).to be_truthy
    end

    def incorret_password
        username_field.set "standard_user"
        password_field.set "secretsauce"
        login_button.click
    end

    def login_error
        expect("error-button").to be_truthy
    end

 end
