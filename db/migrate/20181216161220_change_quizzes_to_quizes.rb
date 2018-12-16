class ChangeQuizzesToQuizes < ActiveRecord::Migration[5.2]
  def change
    rename_table :quizzes, :quizes
  end
end
