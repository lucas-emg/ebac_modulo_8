#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o usuário navegue para a plataforma da EBAC-SHOP
E clique em Login

Cenário: Email invalido
Quando o usuário entrar o email "jjoao@ebac.com"
E a senha "senha123"
Então ele deve receber uma mensagem de alerta dizendo "Usuário
ou senha inválidos"

Cenário: Senha inválida
Quando o usuário entrar o email "joao@ebac.com"
E a senha "senha321"
Então ele deve receber uma mensagem de alerta dizendo "Usuário
ou senha inválidos"

Cenário: Cadastro com credenciais corretas
Quando o usuário entrar o email <email_usuario>
E a senha <senha_usuario>
Então ele deve ser direcionado a tela de checkout

Exemplos:
|email_usuario                  |senha_usuario      |
|joao@ebac.com                  |senha123           |
|maria@ebac.com                 |senha123           |
|cesar@ebac.com                 |senha123           |