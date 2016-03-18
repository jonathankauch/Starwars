class RemoveDefaultInLastUtilisationInPilotsShipsTable < ActiveRecord::Migration
  def up
    change_column :pilots_ships, :last_utilisation, :datetime, :null => false, :default => ""
    change_column_default(:pilots_ships, :last_utilisation, nil)
  end

  def down
  end
end
