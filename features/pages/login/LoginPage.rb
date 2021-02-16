class LoginPage < SitePrism::Page

  set_url '/login'

  element :email, '#email'
  element :password, '#password'
  element :login, '#blip-login'

end