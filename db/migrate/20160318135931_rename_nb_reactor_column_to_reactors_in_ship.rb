class RenameNbReactorColumnToReactorsInShip < ActiveRecord::Migration
  def up
    rename_column :ships, :nb_reactor, :reactors
  end

  def down
  end
end
