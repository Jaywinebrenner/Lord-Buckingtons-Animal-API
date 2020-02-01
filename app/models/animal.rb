class Animal < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :legs, presence: true
  scope :name_search, -> (name_search_parameter) { where("name like ?", "%#{name_search_parameter}%")}
  scope :breed_search, -> (breed_search_parameter) { where("breed like ?", "%#{breed_search_parameter}%")}
  # scope :random_animal, -> (random_parameter) { order("RAND()", "%#{random_paramter}%").limit(1)}

  def self.random_animal
    Animal.order("RAND()").limit(1)
  end


end
