class Quiz < ApplicationRecord
    belongs_to :sticker
    belongs_to :story
    has_many :questions, dependent: :destroy
end
