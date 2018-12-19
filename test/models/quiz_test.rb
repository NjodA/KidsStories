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

require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
