class ApplicationController < ActionController::Base
  
  protected

  def after_sign_in_path_for(resource)
    user_dashboard_index_path 
  end

  def after_sign_out_path_for(resource_or_scope)
    home_path 
  end
end
