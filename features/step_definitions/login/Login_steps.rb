loginpage = LoginPage.new

Given("Eu acesso o link {string}") do |string|
  visit string
end

Given("Eu clico em Cadastre-se Grátis") do
  loginpage.cadastro.click
end


Then("Eu vejo a mensagem {string}") do |string|
  expect(page).to eql(string)
end

Given("Eu insiro o e-mail {string}") do |string|
  loginpage.email.set string
end

Given("Eu insiro a senha {string}") do |string|
  loginpage.email.set string
end

Given("Eu clico em Entrar") do
  loginpage.login.click
end