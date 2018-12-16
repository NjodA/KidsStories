class Quiz < ApplicationRecord
    belongs_to :story
    has_many :questions
end
