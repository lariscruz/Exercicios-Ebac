# language: pt
Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Contexto: Dado que eu acesse a tela de cadastro

  Cenário: Validar dados obrigatórios
    Quando eu colocar o nome "Larissa"
    E sobrenome "Cruz"
    E país "Brasil"
    E endereço "Avenida Rio Branco 100"
    E cidade "Rio de Janeiro"
    E CEP "22032695"
    E telefone "965523108"
    E endereço de e-mail "larissacruz95@gmail.com"
    Então deve aparecer a mensagem "Cadastro finalizado com sucesso!"

  Cenário: Campo de e-mail inválidos
    Quando eu colocar o endereço de e-mail "larissa..cruz95@2gmail.com"
    Então deve aparecer a mensagem de alerta "E-mail informado inválido"

  Cenário: Campos de cadastro vazios
    Quando eu colocar o nome "Larissa"
    E sobrenome "Cruz"
    E país "Brasil"
    E endereço "Avenida Rio Branco 100"
    E cidade "Rio de Janeiro"
    E CEP ""
    E telefone "965523108"
    E endereço de e-mail "larissacruz95@gmail.com"
    Então deve aparecer a mensagem de alerta "Campo obrigatório vazio. Favor preencher todos os campos com asteriscos"

  Esquema do Cenário: Validar campos de cadastro
    Quando eu digitar <nome>
    E <sobrenome>
    E <país>
    E <endereço>
    E <cidade>
    E <CEP>
    E <telefone>
    E <endereço de e-mail>
    Então deve aprecer a <mensagem>

    Exemplos: 
      | nome      | sobrenome | país     | endereço         | cidade           | CEP        | telefone    | e-mail                          | mensagem                                                                  |
      | "Flávia"  | "Silva"   | "Brasil" | "Rua A"          | "Rio de Janeiro" | "22020336" | "965852526" | "flavia1@ebac.com.br"           | "Cadastro finalizado com sucesso!"                                        |
      | "Leticia" | "Ribeiro" | "Brasil" | "Rua da Alegria" | "Rio de Janeiro" | "22020785" | "965885969" | "leticia.ribeiro@gmail.com.brr" | "E-mail informado inválido"                                               |
      | "João"    | "Cruz"    | "Brasil" | "Estrada da Luz" | "Rio de Janeiro" |            | "965858888" | "joaoc1@ebac.com.br"            | "Campo obrigatório vazio. Favor preencher todos os campos com asteriscos" |
