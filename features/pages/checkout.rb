class Checkout < SitePrism::Page

    element :add_backpack_cart, :id, "add-to-cart-sauce-labs-backpack"
    element :shopping_cart, :id, "shopping_cart_container"
    element :checkout_button, :id, "checkout"
    element :first_name, :id, "first-name"
    element :last_name, :id, "last-name"
    element :postal_code, :id, "postal-code"
    element :continue_button, :id, "continue"
    element :finish_button, :id, "finish"
    element :back_home_button, :id, "back-to-products"
    
    def add_product
        add_backpack_cart.click
        shopping_cart.click
        checkout_button.click
    end

    def checkout_information
        first_name.set "Name"
        last_name.set "Lastname"
        postal_code.set "00000-000"
        continue_button.click
    end

    def finish_checkout
        finish_button.click
        expect(back_home_button).to be_truthy 
    end

    def missing_checkout_information
        first_name.set "Name"
        postal_code.set "00000-000"
        continue_button.click
    end

    def checkout_error
        expect("error-button").to be_truthy
    end
end