class MessageDelivery < ActiveRecord::Base
  belongs_to :audio_file
  belongs_to :contact

  has_attached_file :xml_file,
    storage: :s3,
    s3_credentials: "#{Rails.root.join('config', 's3_credentials.yml')}"

  attr_accessible :audio_file_id, :contact_id

  validates_presence_of :audio_file_id, :contact_id

  before_save :upload_xml_file

  after_save :make_call

  def upload_xml_file
    file_content = <<-EOT
<Response>
  <Play>#{audio_file.file.url}</Play>
</Response>
    EOT
    fake_file = StringIO.new file_content
    self.xml_file = fake_file
    self.xml_file_file_name = 'play.xml'
  end

  def make_call
    PhoneCall.new(contact.phone_number, xml_file.url).start
  end

end
