require_relative "../models/employee_model"
require 'faker'

FactoryBot.define do
    factory :employee, class: EmployeeModel do
        nome { Faker::Name.name_with_middle }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { "1.000,00" }
        tipoContratacao { "clt" }
        departamentoId { 1 }
        comissao { "500,00" }
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
        nome { Faker::Name.name_with_middle }
        cpf { Faker::IDNumber.brazilian_citizen_number(formatted: true) }
        sexo { "f" }
        admissao { Faker::Date.in_date_period.strftime("%m/%d/%Y") }
        cargo { Faker::Job.position }
        salario { "1.000,00" }
        tipoContratacao { "clt" }
        departamentoId { 0 }
        comissao { "500,00" }
    end
end