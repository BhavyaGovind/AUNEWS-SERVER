class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token# This is required for AJAX APIs
  before_action :fetch_user

  private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def check_for_login
    redirect_to login_path unless @current_user.present?
  end

  def check_for_admin
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end
end
