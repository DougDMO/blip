cadastropage = cadastroPage.new

Given("Eu preencho o formulário válido") do
  cadastropage.nome.set 'Teste Novo Nome'
  cadastropage.email.set 'testenovo@mailinator.com'
  cadastropage.password.set '123456'
  cadastropage.phone.set '99999999999'
  cadastropage.site.set 'www.teste.com.br'
  cadastropage.empresa.click
  cadastropage.first_empresa.click
end

Given("Eu insiro o nome com {string}") do |string|
  cadastropage.nome.set string
end

Given("Eu insiro o e-mail com {string}") do |string|
  cadastropage.email.set string
end

Given("Eu insiro a senha com {string}") do |string|
  cadastropage.password.set string
end

Given("Eu insiro o telefone com {string}") do |string|
  cadastropage.phone.set string
end

Given("Eu marco o checkbox de aceite") do
  cadastropage.aceite.click
end

Given("Eu clico no botão de confirmar cadastro") do
  cadastropage.submitButton.click
end