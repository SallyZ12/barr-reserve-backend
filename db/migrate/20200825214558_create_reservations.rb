class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :hour
      t.date :date
      t.string :confirmID

      t.timestamps
    end
  end
end
