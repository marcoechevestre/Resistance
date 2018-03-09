FactoryBot.define do
  factory :inventory do
    owner { Faker::Name.name}
    name_item { Faker::Food.dish}
    quantity { Faker::Number.number}
    type { Faker::Lorem.word}
    points { Faker::Number.between(1, 9) }

    done false
    survivor_id nil
  end
end
