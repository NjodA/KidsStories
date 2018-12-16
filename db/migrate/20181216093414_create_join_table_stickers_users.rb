class CreateJoinTableStickersUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :stickers, :users do |t|
      # t.index [:sticker_id, :user_id]
      # t.index [:user_id, :sticker_id]
    end
  end
end
