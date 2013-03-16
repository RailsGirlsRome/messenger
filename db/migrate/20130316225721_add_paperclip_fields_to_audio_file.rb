class AddPaperclipFieldsToAudioFile < ActiveRecord::Migration
  def self.up
    add_attachment :audio_files, :file
  end

  def self.down
    remove_attachment :audio_files, :file
  end
end
