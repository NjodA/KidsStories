# == Schema Information
#
# Table name: quizzes
#
#  id         :bigint(8)        not null, primary key
#  score      :integer
#  sticker_id :integer
#  story_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quiz < ApplicationRecord
    belongs_to :sticker
    belongs_to :story
    has_many :questions, dependent: :destroy
end
