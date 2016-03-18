class CreatePilotsShips < ActiveRecord::Migration
  def change
    add_column :pilots_ships, :last_utilisation, :datetime
  end
end
