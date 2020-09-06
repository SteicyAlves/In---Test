#language: pt

@cadastro_usuario
Funcionalidade: Cadastro de Usuário
    Para acessar as funcionalidades do sistema
    Eu como usuário da Inmetrics ainda não cadastrado
    Quero cadastrar uma conta de usuário

    Contexto: 
    Dado que eu estou na tela de cadastro de usuário

    @cadastro_usuario_sucesso
    Cenário: Cadastro de Usuário com Sucesso
    Quando eu realizo meu cadastro de usuário
    Então eu sou direcionado para a tela de login

    @cadastro_usuario_existente
    Esquema do Cenário: Cadastro de Usuário Existente
    Quando eu realizo meu cadastro com um usuário já cadastrado
    Então eu vejo um alerta de "Usuário já cadastrado"