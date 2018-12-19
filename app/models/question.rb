# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  quiz_id    :integer
#  question   :string
#  op1        :string
#  op2        :string
#  op3        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  answer     :string
#

class Question < ApplicationRecord
    belongs_to :quiz
end
