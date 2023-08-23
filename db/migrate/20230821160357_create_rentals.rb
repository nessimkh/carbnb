class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :start_time
      t.date :end_time
      t.references :user, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
