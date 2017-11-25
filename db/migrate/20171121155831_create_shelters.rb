class CreateShelters < ActiveRecord::Migration[5.1]
  def change
    create_table :shelters do |t|
      t.string :shelter_id
      t.string :name
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :latitude
      t.string :longitude
      t.string :email
      t.timestamps
    end
  end
end
