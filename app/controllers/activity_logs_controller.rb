class ActivityLogsController < ApplicationController
  require 'kinedu_api'
  
  def index
    # Peticiones para rellenar los select options
    @babies = KineduAPI.get_babies.parsed_response
    @assistants = KineduAPI.get_assistants.parsed_response
    @activities = KineduAPI.get_activities.parsed_response
    # Actividades del log
    
    @response = KineduAPI.get_activity_logs(request.fullpath).parsed_response
      
    respond_to do |format|
      format.html { render :index }
    end
  end

  def create
    redirect_to activity_logs_path( 
      b: params['/activity_logs'][:baby_id], 
      a: params['/activity_logs'][:assistant_id], 
      s: params['/activity_logs'][:status] 
    )
  end
end
