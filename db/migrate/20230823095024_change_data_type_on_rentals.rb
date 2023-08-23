class ChangeDataTypeOnRentals < ActiveRecord::Migration[7.0]
  def change
    change_column :rentals, :start_time, :datetime
    change_column :rentals, :end_time, :datetime
  end
end
