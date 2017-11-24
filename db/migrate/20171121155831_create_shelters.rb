class CreateShelters < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.integer :shelter_id
      t.integer :name
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :latitude
      t.integer :longitude
      t.string :email
      t.timestamps
    end
  end
end
