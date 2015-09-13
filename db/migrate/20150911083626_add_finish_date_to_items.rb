class AddFinishDateToItems < ActiveRecord::Migration
  def change
    add_column :items, :finish_date, :date
  end
end
