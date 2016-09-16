FactoryGirl.define do
  factory :user do |f|
    f.email "john@gmail.com"
    f.first_name "John"
    f.last_name "Doe"
    f.password '123456'
    f.password_confirmation '123456'
  end
end
