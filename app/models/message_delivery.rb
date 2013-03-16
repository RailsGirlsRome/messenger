class MessageDelivery < ActiveRecord::Base
  belongs_to :audio_file
  belongs_to :contact
  attr_accessible :audio_file_id, :contact_id

  validates_presence_of :audio_file_id, :contact_id
end
