class ChangeColumnLastUtilisationInPilotsShips < ActiveRecord::Migration
  def change
    change_column :pilots_ships, :last_utilisation, :datetime, :default => Datetime.now
  end
end
