class RemoveIndexInPlanet < ActiveRecord::Migration
  def change
    remove_index(:planets, :name => 'index_planets_on_name')
  end
end
