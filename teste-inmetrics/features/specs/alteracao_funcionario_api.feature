#language: pt

@alteracao_funcionario_api
Funcionalidade: Alteração de Funcionário via API
    Para gerenciar o quadro de funcionários da empresa
    Eu como usuário da Inmetrics
    Quero alterar as informações de funcionários via API

    @alterar_func_sucesso_api
    Cenário: Alteração de Funcionário via API com Sucesso
    Dado que eu estou autenticado pela API
    Quando eu realizo uma requisição de alteração de funcionário
    Então eu vejo que as informações foram alteradas
    E o código de retorno "202"

    @alterar_func_não_autenticado_api
    Cenário: Alteração de Funcionário via API não Autenticado
    Dado que eu não estou autenticado pela API
    Quando eu realizo uma requisição de alteração de funcionário
    Então eu vejo o código de retorno "401"

    @alterar_func_erro_api
    Cenário: Alteração de Funcionário via API com Erro
    Dado que eu estou autenticado pela API
    Quando eu realizo uma requisição de alteração de funcionário <incorreta>
    Então eu vejo o código de retorno <status_code>

    Exemplos:
    | incorreta                      | status_code | caso                               |
    | 'employee_blank'               | '400'       | 'Campos vazios'                    |
    | 'employee_invalid'             | '400'       | 'Campos inválidos'                 |
    | 'employee_invalid_departament' | '400'       | 'Departamento não cadastrado'      |