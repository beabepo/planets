class AddDiameterAndMassToPlanets < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :diameter, :float
    add_column :planets, :mass, :float
  end
end
