class AddCoordinatesToRockets < ActiveRecord::Migration[7.0]
  def change
    add_column :rockets, :latitude, :float
    add_column :rockets, :longitude, :float
  end
end
