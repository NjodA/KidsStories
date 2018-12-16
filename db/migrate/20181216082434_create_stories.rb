class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :image
      t.string :body
      t.string :title
      t.string :audio
      t.string :min
      t.string :level

      t.timestamps
    end
  end
end
