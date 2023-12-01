class LogoutPage < SitePrism::Page

    element :menu_button, :id, "react-burger-menu-btn"
    element :logout_button, :id, "logout_sidebar_link"

    def click_logout
        menu_button.click
        logout_button.click
    end

    def validate_logout
        expect("login-button").to be_truthy
    end
end