class CreateMessageDeliveries < ActiveRecord::Migration
  def change
    create_table :message_deliveries do |t|
      t.belongs_to :audio_file
      t.belongs_to :contact

      t.timestamps
    end
    add_index :message_deliveries, :audio_file_id
    add_index :message_deliveries, :contact_id
  end
end
