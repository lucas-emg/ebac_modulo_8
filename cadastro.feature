#language: pt

Funcionalidade: Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acessar o portal da EBAC
E clicar em Cadastrar

Cenário: Cadastro com campos vazios:
Quando eu deixar de preencher um campo obrigatório
Então deve aparecer uma mensagem: "Preencha todos os campos obrigatórios"

Cenário: Cadastro com email em formato incorreto:
Quando eu não preencher algum dos campos obrigatórios
Então eu devo receber uma mesagem que o email não está no formato correto

Cenário: Cadastro com sucesso:
Quando eu preencher o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>,
Então devo ser levado para o carrinho para finalizar a compra

|nome         |sobrenome        |pais       |endereco                  |cidade           |cep        |telefone      |email                          |
|Jonas        |Silva            |Brasil     |Rua José Campos 22        |São Paulo        |99999-9    |19 990000000  |jonas_2009@email.com           |
|Susana       |Duarte           |Brasil     |Rua Benjamin Constant 55  |Rio de Janeiro   |12312-2    |19 990000000  |susana.duarte.rj@email.net     |
|Célia        |Maria            |Brasil     |Rua Siqueira Campos 1     |Campinas         |43143-4    |19 990000000  |celia-maria19@email.org        |