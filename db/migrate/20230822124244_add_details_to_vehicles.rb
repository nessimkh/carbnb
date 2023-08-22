class AddDetailsToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :color, :string
    add_column :vehicles, :doors, :string
    add_column :vehicles, :kilometer, :integer
    add_column :vehicles, :year, :integer
    add_column :vehicles, :license_plate, :string
  end
end
