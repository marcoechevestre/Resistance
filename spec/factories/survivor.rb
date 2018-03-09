FactoryBot.define do
  factory :survivor do
    name { Faker::Name.name}
    gender { Faker::Boolean.boolean }
    birth_date { Faker::Date.birthday(1,100)}
    status { Faker::Number.between(0, 2)}
    latitude { Faker::Number.decimal(2, 6)}
    longitude { Faker::Number.decimal(2, 6)}
    reports { Faker::NUmber.between(0, 3)}
  end
end
