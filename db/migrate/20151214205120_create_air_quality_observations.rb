class CreateAirQualityObservations < ActiveRecord::Migration
  def change
    create_table :air_quality_observations do |t|
      t.integer :aqi
      t.string :category
      t.timestamp :date_observed
      t.integer :hour_observed
      t.float :latitude
      t.string :local_time_zone
      t.float :longitude
      t.string :parameter_name
      t.string :reporting_area
      t.string :state_code

      t.timestamps null: false
    end
  end
end
