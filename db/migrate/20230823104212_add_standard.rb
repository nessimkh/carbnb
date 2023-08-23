class AddStandard < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :standard_km_rate , :string
  end
end
