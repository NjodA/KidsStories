class Story < ApplicationRecord
    has_one :quiz
    mount_uploader :audio, AudioUploader
    has_many :readings
end
