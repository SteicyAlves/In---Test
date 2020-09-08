require_relative '../models/user_model'
require 'faker'

FactoryBot.define do
    factory :user, class: UserModel do
        nome_usuario { Faker::Internet.username(specifier: 8) }
        senha { Faker::Internet.password(min_length: 8) }
    end
end
