def sign_up(name, username, email, password)
  click_on 'Sign up'
  fill_in 'user_name', with: name
  fill_in 'user_username', with: username
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password
  within '.actions' do
    click_on 'Sign up'
  end
end

def log_in(email, password)
  click_on 'Login'
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_on 'Log in'
end
