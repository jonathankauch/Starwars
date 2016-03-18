class AddNotNullableValueToLastUtilisationInPilotsShips < ActiveRecord::Migration
  def change
    change_column :pilots_ships, :last_utilisation, :datetime, :null => false
  end
end
