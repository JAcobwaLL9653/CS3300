

class ApplicationController < ActionController::Base

    #before_action :authenticate_user!, except: [:destroy_user_session_path, :index]

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    end
  end
end

