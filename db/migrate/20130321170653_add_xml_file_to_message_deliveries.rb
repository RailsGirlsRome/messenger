class AddXmlFileToMessageDeliveries < ActiveRecord::Migration
  def change
    add_column :message_deliveries, :xml_file_file_name, :string
    add_column :message_deliveries, :xml_file_content_type, :string
    add_column :message_deliveries, :xml_file_file_size, :integer
    add_column :message_deliveries, :xml_file_updated_at, :datetime
  end
end
