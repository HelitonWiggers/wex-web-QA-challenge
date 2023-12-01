  Given('the user is on the Saucedemo login page') do
    login.load
  end

  When('the user enters a valid {string} credencials') do |username|
    login.user_login(username)
  end
  
  Then('the user should be redirected to the product page') do
    login.login_successful
  end

  When('the user enters a valid username and incorrect password') do
    login.incorret_password
  end
  
  Then('the user should see an error message indicating invalid login credentials') do
    login.login_error
  end