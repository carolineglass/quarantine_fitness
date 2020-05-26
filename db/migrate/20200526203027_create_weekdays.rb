class CreateWeekdays < ActiveRecord::Migration[6.0]
  def change
    create_table :weekdays do |t|
      t.string :name
      t.integer :routine_id

      t.timestamps
    end
  end
end
