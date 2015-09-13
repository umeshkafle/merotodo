class AddStartDateToItems < ActiveRecord::Migration
  def change
    add_column :items, :start_date, :date
  end
end
