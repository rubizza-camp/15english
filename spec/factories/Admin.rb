FactoryBot.define do

  factory :user do
    name                  "Mark Brown"
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
    admin false
  end

  factory :admin, class: User do
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
    admin      true
  end

  factory :course do
    title 'Propro'
  end
end

