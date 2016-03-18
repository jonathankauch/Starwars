class RenamePilotsShipToPilotsShips < ActiveRecord::Migration
  def change
    rename_table :pilots_ship, :pilots_ships
  end
end
