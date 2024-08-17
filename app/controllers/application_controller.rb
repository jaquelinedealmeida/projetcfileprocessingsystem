class ApplicationController < ActionController::Base
  
  protected

  def after_sign_in_path_for(resource)
    user_dashboard_path # Exemplo de redirecionamento após login
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path # Exemplo de redirecionamento após logout
  end
end
