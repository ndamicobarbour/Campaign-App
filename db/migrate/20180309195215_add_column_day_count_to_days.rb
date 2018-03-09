class AddColumnDayCountToDays < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :day_count, :int
  end
end
