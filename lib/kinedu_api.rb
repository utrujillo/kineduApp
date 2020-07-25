require 'httparty'

class KineduAPI
  include HTTParty
  format :json

  base_uri 'http://localhost:3000/'
  format :json

  # attr_accessor :id, :baby_id, :baby_name, :teacher, :activity, :start_time, :stop_time, :duration, :comments

  def self.get_activity_logs
    get('/activity_logs.json')
  end

end