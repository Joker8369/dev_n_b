class AddCoordinatesToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :latitude, :float
    add_column :developers, :longitude, :float
  end
end
