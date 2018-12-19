# == Schema Information
#
# Table name: stickers
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sticker < ApplicationRecord
    has_and_belongs_to_many :users
end
