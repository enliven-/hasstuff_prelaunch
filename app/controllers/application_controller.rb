class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
  end

  def subscribe
    user = User.create(email: params[:email], name: params[:name] || 'anonymous')
    render 'thanks'
  end

  def message
    message = ContactMessage.create(email: params[:email], subject: params[:subject] || 'anonymous', message: params[:message])
    render 'thanks_message'
  end

end