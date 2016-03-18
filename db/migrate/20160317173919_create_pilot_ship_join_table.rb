class CreatePilotShipJoinTable < ActiveRecord::Migration
  def change
    create_table :pilots_ships, :id => false do |t|
      t.integer :pilot_id
      t.integer :ship_id
    end
  end
end
