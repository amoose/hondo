# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    url "MyText"
    imageable_id 1
    imageable_type "MyString"
  end
end
