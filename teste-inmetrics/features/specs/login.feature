#language: pt

Funcionalidade: Login
    Para acessar as funcionalidades do sistema
    Eu como usuário da Inmetrics previamente cadastrado
    Quero fazer login em minha conta

    Contexto:
    Dado que eu estou na tela de login

    @login_sucesso
    Esquema do Cenário: Login com Sucesso
    Quando eu realizo login com um <usuario> e uma <senha>
    Então eu vejo a tabela de empregados

    Exemplos:
    | usuario     | senha         |
    | 'teste-ste' | '12345678poi' |
    | 'user-test' | 'qwer123'     |


    @login_erro
    Esquema do Cenário: Login com Erro
    Quando eu realizo login com um <usuario> e uma <senha>
    Então eu vejo um alerta de <erro>

    Exemplos:
    | usuario       | senha     | erro                               |
    | 'userqwert12' | '7454545' | 'ERRO! Usuário ou Senha inválidos' |
    | 'user_kjhg13' | '122222'  | 'ERRO! Usuário ou Senha inválidos' |