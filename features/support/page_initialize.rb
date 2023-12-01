module Page

    def login
        @login ||= LoginPage.new
    end

    def logout
        @logout ||= LogoutPage.new
    end

    def checkout
        @checkout ||= Checkout.new
    end
end