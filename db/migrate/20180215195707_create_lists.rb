class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :due_date
      t.string :note

      t.timestamps
    end
  end
end
