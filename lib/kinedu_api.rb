require 'httparty'

class KineduAPI
  include HTTParty
  format :json

  base_uri 'https://kineduapi.herokuapp.com/'
  format :json

  def self.get_activity_logs(fullpath)
      get("#{fullpath}.json")
  end

  def self.get_babies
    get('/babies.json')
  end

  def self.get_assistants
    get('/assistants.json')
  end

  def self.get_activities
    get('/activities.json')
  end

end