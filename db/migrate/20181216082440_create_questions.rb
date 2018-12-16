class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :question
      t.string :op1
      t.string :op2
      t.string :op3

      t.timestamps
    end
  end
end
