FactoryBot.define do

  factory(:animal) do
    name { Faker::GreekPhilosophers.name }
    breed { Faker::Creature::Animal.name }
    legs { rand(1..12) }
  end

end
