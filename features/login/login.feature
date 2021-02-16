@login @all
  Feature: Login

    Background:
      Given Eu estou na tela de login Blip
      Then Eu vejo a mensagem "Para começar, faça o login na sua conta"

    @login_success @smoke_test
    Scenario: Login Sucesso
      Given Eu insiro o e-mail "emailvalido@mailinator.com"
      And Eu insiro a senha "123456"
      When Eu clico em Entrar
      Then Eu vejo a mensagem "Bem-vindo Email Valido"

    @login_failt @smoke_test
    Scenario: Login Falha
      Given Eu insiro o e-mail "emailinvalido@mailinator.com"
      And Eu insiro a senha "12345678"
      When Eu clico em Entrar
      Then Eu vejo a mensagem "Login e/ou senha inválidos"