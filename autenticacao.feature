# language: pt

Funcionalidade: Autenticação na EBAC
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: Dado que eu acesse a página de autenticação do Portal EBAC

  Cenário: Direcionar para a tela de Checkout
    Quando eu inserir o usuário "lari@ebac.com.br"
    E a senha "teste@123"
    Então deve direcionar para a tela de Checkout

  Cenário: Usuário ou senha inválidos
    Quando eu inserir o usário "lari@ebac.com.br"
    E a senha "kisdui77"
    Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

  Esquema do Cenário: Validar usuário ou senha inválidos
    Quando eu inserir o <usuário>
    E a <senha>
    Então deve exigir uma <mensagem> de alerta

    Exemplos: 
      | usuário              | senha     | mensagem                     |
      | "lari@ebac.com.br"   | "ghjf965" | "Usuário ou senha inválidos" |
      | "diego_7@gmail.com"   | "123654" | "Usuário ou senha inválidos" |
