class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :shelter_id
      t.string :name
      t.string :age
      t.string :mix
      t.string :sex
      t.string :size
      t.string :description
      t.string :photo
      t.timestamps
    end
  end
end
