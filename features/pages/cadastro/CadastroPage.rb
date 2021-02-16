class CadastroPage < SitePrism::Page

  set_url '/register'

  element :nome, '#FullName'
  element :email, '#Email'
  element :password, '#Password'
  element :phone, '#PhoneNumber'
  element :site, '#CompanySite'
  element :empresa, xpath,'/html/body/div/div/section/main/form/div[1]/div[6]/div[1]/div[1]/div/div[1]/input'
  element :first_empresa, xpath,'/html/body/div/div/section/main/form/div[1]/div[6]/div[2]/ul/li[1]'
  element :aceite, '#bds-checkbox-0'
  element :submitButton, '#submitButton'


end