class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :transmission
      t.string :power_source
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
