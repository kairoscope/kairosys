class ApplicationController < ActionController::Base
  
  helper_method :admin_user
  helper_method :project_list
  
  before_filter :project_list
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
    def admin_user
      if current_user.try(:admin?)
      else
        redirect_to credentials_path
      end
    end
    
    def project_list
      @project_list = Project.all
    end
end
