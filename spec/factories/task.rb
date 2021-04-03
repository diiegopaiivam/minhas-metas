FactoryBot.define do
    factory :task do 
        name { Faker::Name.first_name }
        description { Faker::Lorem.sentence(word_count:20) }
        status { Faker::Number.between(from: 1, to: 3) }
        estimative { Faker::Date.between(from: '2021-04-03', to: '2021-04-30') }
        value { Faker::Number.decimal(l_digits: 2) }
        priority { Faker::Number.between(from: 1, to: 3) }
    end
end