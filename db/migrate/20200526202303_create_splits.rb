class CreateSplits < ActiveRecord::Migration[6.0]
  def change
    create_table :splits do |t|
      t.integer :exercise_id
      t.integer :routine_id
      t.integer :duration

      t.timestamps
    end
  end
end
