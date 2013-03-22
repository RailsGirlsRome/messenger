class PhoneCall
  include HTTParty

  attr_reader :number, :xml_file_url, :auth

  FROM = '12345678'

  def initialize(number, xml_file_url)
    @number = number
    @xml_file_url = xml_file_url
    @auth = {
      username: ENV['PLIVO_AUTH_ID'],
      password: ENV['PLIVO_AUTH_TOKEN']
    }
  end

  def start
    response = self.class.post(post_url, options)
  end

  private

  def post_url
    "https://api.plivo.com/v1/Account/#{ENV['PLIVO_AUTH_ID']}/Call/"
  end

  def options
    {
      basic_auth: auth,
      body: request_body.to_json,
      headers: {
        'Content-Type' => 'application/json'
      }
    }
  end

  def request_body
    {
      from: FROM,
      to: number,
      answer_method: 'GET',
      answer_url: xml_file_url,
    }
  end

end
