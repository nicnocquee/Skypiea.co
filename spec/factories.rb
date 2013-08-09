 FactoryGirl.define do
  factory :user do
    username     "michaelheart"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
    artist false
  end
end