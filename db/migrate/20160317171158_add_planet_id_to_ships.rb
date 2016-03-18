class AddPlanetIdToShips < ActiveRecord::Migration
  def change
    add_column :ships, :planet_id, :integer
    add_index :ships, :planet_id
  end
end
