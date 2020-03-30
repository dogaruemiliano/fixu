class ApplicationController < ActionController::Base
  before_action :persist_last_visited_path, :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :address, :phone_number])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :address, :phone_number])
  end

  def after_sign_in_path_for(resource)
    if session[:last_visited_path].present?
      session[:last_visited_path]
     else
      root_path
     end
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def persist_last_visited_path
    unless request.path == '/users/sign_in' || request.path == '/users/sign_up' || request.path == '/users/password' || request.path == '/users/sign_out' || request.path == '/users/confirm_password)'
      session[:last_visited_path] = request.path
    end
  end
end
