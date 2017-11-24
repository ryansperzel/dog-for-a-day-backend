class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :pet_id
      t.integer :user_id
      t.datetime :day
      t.timestamps
    end
  end
end
