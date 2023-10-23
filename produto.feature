#language: pt 

Funcionalidade: Tela de produto
Como cliente da EBAC Shop
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quatidade 
Para depois colocar no carrinho  

Cenário: Validar cor, tamanho e quantidade obrigatórios 
Dado que eu acesse a tela de produto
Quando eu selecionar a cor "verde"
E o tamanho "38"
E a quantidade "2"
Então o produto deve ir para o carrinho de compras EBAC

Cenário: Validar até 10 produtos na cesta 
Dado que eu acesse a tela de produto
Quando eu selecionar até "10" produtos
Então os produtos selecionados devem ir para o carrinho de compras EBAC

Cenário: Validar botão de "Limpar"
Dado que eu tenha selecionado o tamanho "42" do produto
Quando eu clicar no botão "limpar"
Então deve voltar as configurações originais do produto


