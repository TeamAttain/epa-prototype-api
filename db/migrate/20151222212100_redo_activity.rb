class RedoActivity < ActiveRecord::Migration
  def change
    drop_table :activities

    create_table :activities do |t|
      t.float :lat
      t.float :lng
      t.string :location
      t.datetime :date
    end
  end
end
