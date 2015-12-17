class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :fb_activity_id
      t.integer :fb_activity_parent_id
      t.integer :calories
      t.string :description
      t.float :distance
      t.integer :duration
      t.boolean :has_start_time
      t.integer :log_id
      t.boolean :is_favorite
      t.string :name
      t.string :start_time
      t.integer :steps
      t.string :location

      t.timestamps null: false
    end
  end
end
