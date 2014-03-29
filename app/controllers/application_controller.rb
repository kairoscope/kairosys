class ApplicationController < ActionController::Base
  
  helper_method :admin_user
  helper_method :project_list
  
  before_filter :project_list
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
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
      if current_user.try(:admin?)
        @project_list = Project.all.order(created_at: :asc)
      else
        @project_list = Project.order(created_at: :asc).find_all_by_visibility("public")
      end
    end
    
  protected

    def configure_permitted_parameters
       devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :description, :avatar, :current_password, :first_name, :last_name, :member_title) }
    end
    
end
