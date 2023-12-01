  When('the user logs out') do
    logout.click_logout
  end
  
  Then('the user should be redirected to the login page') do
    logout.validate_logout
  end