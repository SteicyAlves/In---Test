#language: pt

@listagem_funcionario_api
Funcionalidade: Listegem de Funcionário via API
    Para visualizar o quadro de funcionários da empresa
    Eu como usuário da Inmetrics
    Quero listar funcionários via API

    Contexto:
    Dado que eu estou autenticado pela API

    @listar_todos_func_api
    Cenário: Listar Todos os Funcionários via API com Sucesso
    Quando eu realizo uma requisição de listagem de todos funcionários
    Então eu vejo o código de retorno "200"

    @listar_funcionario_api
    Cenário: Listar Funcionário via API com Sucesso
    Quando eu realizo uma requisição de listagem de um funcionário
    Então eu vejo os dados do funcionário requisitado
    E o código de retorno "202"

    @listar_funcionario_erro_api
    Cenário: Listar Funcionário via API com Erro
    Quando eu realizo uma requisição de listagem de um funcionário <invalido>
    Então eu vejo o código de retorno <status_code>

    Exemplos:
    | invalido | status_code | caso                               |
    | '0'      | '400'       | 'Id de Funcionário não cadastrado' |
    | 'hgfdfg' | '400'       | 'Id de Funcionário inválido'       |
    | ''       | '404'       | 'Id de Funcionário não informado'  |