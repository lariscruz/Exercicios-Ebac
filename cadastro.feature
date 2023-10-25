# language: pt
Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Contexto: Dado que eu acesse a tela de cadastro

  Cenário: Validar dados obrigatórios
    Quando eu colocar o campo nome, sobrenome, país, endereço, cidade, CEP, telefone e e-mail
    Então deve aparecer a mensagem "Cadastro finalizado com sucesso!"

  Cenário: Campo de e-mail inválidos
    Quando eu colocar o endereço de e-mail "larissa..cruz95@2gmail.com"
    Então deve aparecer a mensagem de alerta "E-mail informado inválido"

  Cenário: Campos de cadastro vazio
    Quando eu deixar de preencher algum campo obrigatório
    Então deve aparecer a mensagem de alerta "Campo obrigatório vazio. Favor preencher todos os campos com asteriscos"

