class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def current_user
    @current_user ||= super
  end

  rescue_from CanCan::AccessDenied do |exception|
    exception.default_message = "You are not authorized to perform this task"
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to root_path, alert: exception.message }
    end
  end
end

