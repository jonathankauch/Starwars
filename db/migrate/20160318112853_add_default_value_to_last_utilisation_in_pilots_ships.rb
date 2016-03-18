class AddDefaultValueToLastUtilisationInPilotsShips < ActiveRecord::Migration
  def change
    change_column :pilots_ships, :last_utilisation, :datetime, :default => DateTime.now
  end
end
