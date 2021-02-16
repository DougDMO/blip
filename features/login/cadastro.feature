@cadastro @all
  Feature: Cadastro

    Background:
      Given Eu acesso o link 'https://account.blip.ai/login'
      When Eu clico em Cadastre-se Grátis
      Then Eu vejo a mensagem "Level up your chatbot"

    @cadastro_sucesso @smoke_test
    Scenario: Cadastro Sucesso
      Given Eu preencho o formulário válido
      And Eu marco o checkbox de aceite
      When Eu clico no botão de confirmar cadastro
      Then Eu vejo a mensagem "Enviamos um e-mail de ativação para"

    @senha_invalida
    Scenario: Senha inválida
      Given Eu insiro o nome com "Douglas Melo Oliveira"
      And Eu insiro o e-mail com "douglas.melo@mailinator.com"
      When Eu insiro a senha com "12345"
      Then Eu vejo a mensagem "Sua senha deve conter no mínimo 6 caracteres"

    @telefone_invalido
    Scenario: Telefone inválida
      Given Eu insiro o nome com "Douglas Melo Oliveira"
      And Eu insiro o e-mail com "douglas.melo@mailinator.com"
      And Eu insiro a senha com "123456"
      When Eu insiro o telefone com "9999999"
      Then Eu vejo a mensagem "Esse não parece ser um telefone válido. Por favor, tente de novo :)"