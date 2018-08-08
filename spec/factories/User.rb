# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name                  "Mark Brown"
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
    admin false
  end
end
