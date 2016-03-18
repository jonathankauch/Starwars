class RenamePlanetTypeColumnToCategoryInPlanetsTable < ActiveRecord::Migration
  def up
    rename_column :planets, :planet_type, :category
  end

  def down
  end
end
