 FactoryGirl.define do
  factory :sticker do
    user_id 1
    name "Sticker Factory"
    description "Sticker Factory description"
    number_of_stickers 10
    views 10
    likes 0
    price 16
    file "http://someurl.com"
    screenshot "http://screenshoturl.com"
  end
end