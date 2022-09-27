#language: pt

Funcionalidade: Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o cliente acessou o portal da EBAC
E clicou em Cadastrar

Cenário: Cadastro com campos vazios:
Quando eu deixar de preencher um campo obrigatório
Então deve aparecer uma mensagem: "Preencha todos os campos obrigatórios"

Cenário: Cadastro com email em formato incorreto:
Quando o cliente preencher o Nome como <nome>
E não preencher o campo do Sobrenome como <sobrenome>
E não preencher o campo do País como <pais>
E não preencher o campo do Endereço como <endereco>
E não preencher o campo do Cidade como <cidade>
E não preencher o campo do CEP como <cep>
E não preencher o campo do Telefone como <telefone>
E não preencher o campo do Email como <email>
Então ele deve receber uma mesagem que o email não está no formato correto

Exemplos:       
|nome         |sobrenome        |pais       |endereco           |cidade      |cep        |telefone      |email           |
|Jonas        |Silva            |Brasil     |Rua José Campos 22 |São Paulo   |99999-9    |19 990000000  |jonas@email     |
|Jonas        |Silva            |Brasil     |Rua José Campos 22 |São Paulo   |99999-9    |19 990000000  |jonas.email.com |
|Jonas        |Silva            |Brasil     |Rua José Campos 22 |São Paulo   |99999-9    |19 990000000  |jonas@email,com |

Cenário: Cadastro com sucesso:
Quando o cliente preencher o Nome como <nome>
E não preencher o campo do Sobrenome como <sobrenome>
E não preencher o campo do País como <pais>
E não preencher o campo do Endereço como <endereco>
E não preencher o campo do Cidade como <cidade>
E não preencher o campo do CEP como <cep>
E não preencher o campo do Telefone como <telefone>
E não preencher o campo do Email como <email>
Então O usuário deve ser levado para o carrinho para finalizar a compra

|nome         |sobrenome        |pais       |endereco                  |cidade           |cep        |telefone      |email                          |
|Jonas        |Silva            |Brasil     |Rua José Campos 22        |São Paulo        |99999-9    |19 990000000  |jonas_2009@email.com           |
|Susana       |Duarte           |Brasil     |Rua Benjamin Constant 55  |Rio de Janeiro   |12312-2    |19 990000000  |susana.duarte.rj@email.net     |
|Célia        |Maria            |Brasil     |Rua Siqueira Campos 1     |Campinas         |43143-4    |19 990000000  |celia-maria19@email.org        |