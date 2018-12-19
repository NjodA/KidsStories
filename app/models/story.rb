# == Schema Information
#
# Table name: stories
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  body       :string
#  title      :string
#  audio      :string
#  min        :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ApplicationRecord
    has_one :quiz, dependent: :destroy
    mount_uploader :audio, AudioUploader
    has_many :readings, dependent: :destroy
end
