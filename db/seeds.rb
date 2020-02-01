class Seed

  def self.begin

    @seed = Seed.new
    @seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::GreekPhilosophers.name,
        breed: Faker::Creature::Animal.name.titleize,
        legs: rand(1..8)
      )
      puts "Animal #{i}: Name is #{animal.name} and breed is '#{animal.breed}' and has #{animal.legs} legs."
      p "created #{Animal.count} Animals"

    end
  end
end
Seed.begin
