require_relative '../models/employee_model'
require 'faker'

def generate_money
    Money.new(Faker::Number.number(digits: 6), "BRL").format(symbol: false, thousands_separator: ".", decimal_mark: ",")
end

FactoryBot.define do
    factory :employee, class: EmployeeModel do
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "clt" }
        departamentoId { 1 }
        comissao { generate_money }
    end

    factory :registered_employee, class: EmployeeModel do
        empregadoId { 0 }
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "m" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "pj" }
        departamentoId { 1 }
        comissao { generate_money }

        after(:build) do |employee|
            result = ApiEmployee.create(employee.to_hash, CONFIG["authorization"])
            employee.empregadoId = result.parsed_response["empregadoId"]
        end
    end

    factory :employee_blank, class: EmployeeModel do
        nome { "" }
        cpf { "" }
        sexo { "f" }
        admissao { "" }
        cargo { "" }
        salario { "" }
        tipoContratacao { "" }
        departamentoId { "" }
        comissao { "" }
    end

    factory :employee_invalid, class: EmployeeModel do
        nome { 123 }
        cpf { Faker::IDNumber.brazilian_citizen_number }
        sexo { "other" }
        admissao { Faker::Date.in_date_period.strftime }
        cargo { 123 }
        salario { 500 }
        tipoContratacao { "other" }
        departamentoId { 1 }
        comissao { 500 }
    end

    factory :employee_invalid_departament, class: EmployeeModel do
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "clt" }
        departamentoId { 0 }
        comissao { generate_money }
    end

    factory :employee_id_nonexistent, class: EmployeeModel do
        empregadoId { 0 }
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "clt" }
        departamentoId { 1 }
        comissao { generate_money }
    end

    factory :employee_id_blank, class: EmployeeModel do
        empregadoId { nil }
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "clt" }
        departamentoId { 1 }
        comissao { generate_money }
    end

    factory :employee_id_string, class: EmployeeModel do
        empregadoId { "text" }
        nome { Faker::Name.first_name }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { generate_money }
        tipoContratacao { "clt" }
        departamentoId { 1 }
        comissao { generate_money }
    end
end