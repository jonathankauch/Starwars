class ChangeColumnNameToUniqueToPlanets < ActiveRecord::Migration
  def change
    change_column :planets, :name, :string, :unique => true
  end
end
