class ChangeDuedateFromLists < ActiveRecord::Migration[5.1]
  def change
    change_column :lists, :due_date, :datetime
  end
end
