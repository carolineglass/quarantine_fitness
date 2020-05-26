class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :directions
      t.string :img_url

      t.timestamps
    end
  end
end
