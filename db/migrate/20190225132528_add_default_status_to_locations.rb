class AddDefaultStatusToLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :status, :string, default: 'Pending'
  end
end
