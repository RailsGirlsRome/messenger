class AudioFile < ActiveRecord::Base
  attr_accessible :name, :file

  has_attached_file :file
end
