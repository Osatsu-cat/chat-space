FactoryBot.define do 
  factory :message do
    content {Faker::Lorem.sentence}
    image   {File.open("#{Rails.root}/public/images/test_image.png")}
    user    
    group   #外部キーはそのまま。_idなし
  end
end