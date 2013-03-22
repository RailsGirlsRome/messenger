class MessageDelivery < ActiveRecord::Base
  belongs_to :audio_file
  belongs_to :contact

  has_attached_file :xml_file,
    storage: :s3,
    s3_credentials: "#{Rails.root.join('config', 's3_credentials.yml')}"

  attr_accessible :audio_file_id, :contact_id

  validates_presence_of :audio_file_id, :contact_id

end
