class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.decimal :time_taken
      t.integer :user_id
      t.integer :story_id

      t.timestamps
    end
  end
end
