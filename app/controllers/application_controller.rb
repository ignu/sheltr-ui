class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ohana
    return @client if @client
    @client = Ohanakapa::Client.new
    @client
  end
end
