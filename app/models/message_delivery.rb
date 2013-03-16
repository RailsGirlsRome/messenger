class MessageDelivery < ActiveRecord::Base
  belongs_to :audio_file
  belongs_to :contact
  # attr_accessible :title, :body
end
