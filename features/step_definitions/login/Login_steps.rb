loginpage = LoginPage.new

Given("Eu estou na tela de login Blip") do
  visit 'https://account.blip.ai/login'
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