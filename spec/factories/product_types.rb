# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_type do
    type_name "MyString"
    condition 1
  end
end
