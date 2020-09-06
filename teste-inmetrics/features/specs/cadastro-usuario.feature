#language: pt

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

    @cadastro_usuario_erro
    Esquema do Cenário: Cadastro de Usuário com Erro
    Quando eu realizo meu cadastro com um <usuario> e uma <senha>
    Então eu vejo um alerta de <erro>

    Exemplos:
    | usuario        | senha        | erro                    |
    | 'user-exists'  | '12345678In' | 'Usuário já cadastrado' |
    | 'user-exists1' | '12345678In' | 'Usuário já cadastrado' |

