class RemoveColumnsFromRides < ActiveRecord::Migration
  def change
    remove_column :rides, :name
    remove_column :rides, :tickets
    remove_column :rides, :nausea_rating
    remove_column :rides, :min_height
    remove_column :rides, :happiness_rating
  end
end
