class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :breed, :string
      t.column :legs, :integer

      t.timestamps
    end
  end
end
