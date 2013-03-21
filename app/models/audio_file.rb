class AudioFile < ActiveRecord::Base
  attr_accessible :name, :file

  has_attached_file :file,
    storage: :s3,
    s3_credentials: "#{Rails.root.join('config', 's3_credentials.yml')}"

end
