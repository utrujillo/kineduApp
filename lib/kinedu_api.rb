require 'httparty'

class KineduAPI
  include HTTParty
  format :json

  base_uri 'http://localhost:3000/'
  format :json

  def self.get_activity_logs
    get('/activity_logs.json')
  end

end