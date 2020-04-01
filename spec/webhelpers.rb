def sign_up(name, username, email, password)
  visit('/users/sign_up')
  fill_in "user_name", with: name
  fill_in "user_username", with: username
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  fill_in "user_password_confirmation", with: password
  within '.actions' do
    click_on 'Sign up'
  end
end