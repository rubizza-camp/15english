FactoryBot.define do

  factory :user do
    first_name "John"
    last_name  "Doe"
    admin false
  end

  factory :admin, class: User do
    first_name "Admin"
    last_name  "User"
    admin      true
  end

  factory :course do
    title 'Propro'
  end
end

