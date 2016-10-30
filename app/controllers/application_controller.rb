class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :choose_layout

    def after_sign_in_path_for(resource)
	    if current_admin
	      flash[:notice] = "Hello! Admin"
	      admin_root_path
	    end
	end

	  def choose_layout
	    if devise_controller? && current_admin

	      "admin/admin_layout"
	    else
	      "application"
	    end      
    end
end
