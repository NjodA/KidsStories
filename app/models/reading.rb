# == Schema Information
#
# Table name: readings
#
#  id         :bigint(8)        not null, primary key
#  time_taken :decimal(, )
#  user_id    :integer
#  story_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reading < ApplicationRecord
    belongs_to :story
    belongs_to :user

end
