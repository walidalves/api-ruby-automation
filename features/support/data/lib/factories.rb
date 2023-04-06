require 'faker'
require_relative '../models/users_model'


FactoryBot.define do
    factory :usuario, class: UsersModel do
      nome { Faker::Name.name }
      email { Faker::Internet.email }
      password { Faker::Internet.password}
      administrador { ['true', 'false'].sample }
    end
end