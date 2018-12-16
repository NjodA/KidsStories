class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.integer :score
      t.integer :sticker_id
      t.integer :qstory_id

      t.timestamps
    end
  end
end
