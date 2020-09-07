#language: pt

@cadastro_funcionario_api
Funcionalidade: Cadastro de Funcionário via API
    Para gerenciar o quadro de funcionários da empresa
    Eu como usuário da Inmetrics
    Quero cadastrar funcionários via API

    @cadastrar_func_sucesso_api
    Cenário: Cadastro de Funcionário via API com Sucesso
    Dado que eu estou autenticado pela API
    Quando eu realizo uma requisição de cadastro de funcionário
    Então eu vejo o id do novo funcionário cadastrado
    E o código de retorno "202"

    @cadastrar_func_não_autenticado_api
    Cenário: Cadastro de Funcionário via API não Autenticado
    Dado que eu não estou autenticado pela API
    Quando eu realizo uma requisição de cadastro de funcionário
    Então eu vejo o código de retorno "401"

    @cadastrar_func_erro_api
    Cenário: Cadastro de Funcionário via API com Erro
    Dado que eu estou autenticado pela API
    Quando eu realizo uma requisição de cadastro de funcionário <incorreta>
    Então eu vejo o código de retorno <status_code>

    Exemplos:
    | incorreta                      | status_code | caso                          |
    | 'employee_blank'               | '400'       | 'Campos vazios'               |
    | 'employee_invalid'             | '400'       | 'Campos inválidos'            |
    | 'employee_invalid_departament' | '400'       | 'Departamento não cadastrado' |