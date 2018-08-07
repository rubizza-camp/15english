FactoryBot.define do

  factory :admin, class: User do
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
    admin      true
  end
end

