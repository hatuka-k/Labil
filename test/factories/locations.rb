FactoryGirl.define do
  factory :location do
    sequence(:name){|i| "場所の名前#{i}" }
    sequence(:category){'2'}
  end
end
