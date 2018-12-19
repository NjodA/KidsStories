class Story < ApplicationRecord
    has_one :quiz, dependent: :destroy
    mount_uploader :audio, AudioUploader
    has_many :readings, dependent: :destroy
end
