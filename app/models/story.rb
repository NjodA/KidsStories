class Story < ApplicationRecord
    has_one :quiz
    mount_uploader :audio, AudioUploader
end
