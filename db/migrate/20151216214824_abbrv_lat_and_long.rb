class AbbrvLatAndLong < ActiveRecord::Migration
  def change
    rename_column :air_quality_observations, :latitude, :lat
    rename_column :air_quality_observations, :longitude, :lng
  end
end
