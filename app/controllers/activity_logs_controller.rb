class ActivityLogsController < ApplicationController
  require 'kinedu_api'
  
  def index
    @response = KineduAPI.get_activity_logs.parsed_response
    
    respond_to do |format|
      format.html { render :index }
    end
  end
end
