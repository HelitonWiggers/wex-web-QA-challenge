  Given('the user is logged in and on the Saucedemo product page') do
    step 'the user is on the Saucedemo login page'
    step 'the user enters a valid "standard_user" credencials'
  end
  
  When('the user adds a product to the shopping cart') do
    checkout.add_product
  end
  
  When('provides valid shipping and payment information') do
    checkout.checkout_information
  end

  Then ('the user should successfully complete the checkout process') do
    checkout.finish_checkout
  end

  When('provides missing shipping and payment information') do
    checkout.missing_checkout_information
  end
  
  Then('the user must not complete the checkout process') do
    checkout.checkout_error
  end