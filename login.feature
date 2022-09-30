#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu navegue para a plataforma da EBAC-SHOP
E clique em Login

Cenário: Email invalido
Quando eu entrar o email "jjoao@ebac.com" e a senha "senha123"
Então eu devo receber uma mensagem de alerta dizendo "Usuário
ou senha inválidos"

Cenário: Senha inválida
Quando eu entrar o email "joao@ebac.com" e a senha "senha321"
Então eu devo receber uma mensagem de alerta dizendo "Usuário
ou senha inválidos"

Cenário: Cadastro com credenciais corretas
Quando eu entrar o email <email_usuario> e a senha <senha_usuario>
Então eu devo ser direcionado a tela de checkout

Exemplos:
|email_usuario                  |senha_usuario      |
|joao@ebac.com                  |senha123           |
|maria@ebac.com                 |senha123           |
|cesar@ebac.com                 |senha123           |