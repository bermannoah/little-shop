class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_categories, :set_ticket

  def set_ticket
    @ticket = Ticket.new(session[:ticket])
  end

  def current_user
    @current_user ||= Server.find(session[:server_id]) if session[:server_id]
  end

  def logged_in?
    current_user
  end


  helper_method :current_user, :logged_in?

  def set_categories
    @categories = Category.all
  end
end
