class ApplicationController < ActionController::Base
	protect_from_forgery

def not_authenticated
	redirect_to login_url, :alert => "Primer login de acceso a esta pagina"
	
end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
