class AddPlanetIdToPilots < ActiveRecord::Migration
  def change
    add_column :pilots, :planet_id, :integer
    add_index :pilots, :planet_id
  end
end
