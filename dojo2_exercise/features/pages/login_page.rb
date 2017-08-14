class LoginPage < SitePrism::Page
  set_url 'https://demo.suiteondemand.com/index.php?action=Login&module=Users'

  element :username_field, "#user_name[type='text']"
  element :password_field, "#user_password"
  element :login_button, "[value='Log In']"

  def log_in(username, password)
    username_field.set(username)
    password_field.set(password)
    login_button.click

  end
end
