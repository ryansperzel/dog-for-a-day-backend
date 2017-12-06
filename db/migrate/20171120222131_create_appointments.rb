class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :dog_id
      t.integer :user_id
      t.date :day
      t.string :name
      t.string :photo
      t.integer :cost
      t.timestamps
    end
  end
end
