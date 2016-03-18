class ChangeTypeInPlanet < ActiveRecord::Migration
  def up
    rename_column :planets, :type, :planet_type
  end

  def down
  end
end
