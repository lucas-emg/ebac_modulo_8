#language: pt

Funcionalidade: Configurar
Como cliente da EBAC-SHOP
Quero confirgurar meu produto de acordo com o meu tamanho
e escolher a quantidade
para depois inserir no carrinho

Contexto:
Dado que eu acesse o portal da EBAC
E escolha um produto para a compra

Cenário: Adicionar ao carrinho com quantidade acima de 10
Quando eu escolher o tamanho <tamanho>, <cor> e quantidade 20
E clicar em comprar
Então uma mensagem de alerta deve aparecer dizendo "Quantidade máxima de 10 items por venda"

Cenário: Adicionar ao carrinho com quantidades abaixo de 10
Quando eu escolher o tamanho <tamanho>, <cor> e <quantidade>
E clicar em comprar
Então o produto deve ser adicionado ao carrinho

Cenário: Limpar configuração do produto
Quando eu escolher o tamanho <tamanho>, <cor> e <quantidade>
E clicar em Limpar
Então o produto deve voltar a sua configuração inicial

Exemplos:
|tamanho        |cor            |quantidade     |
|XS             |Blue           |10             |
|S              |Red            |9              |
|M              |White          |6              |
|L              |Yellow         |8              |
|XL             |Orange         |2              |