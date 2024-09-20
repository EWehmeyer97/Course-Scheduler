class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  def professer_user
  	@professer_user ||= Professer.find_by(session[:professor_id])
  end

  def student_user
  	@student_user ||= Student.find_by(session[:student_id])
  end


  def hello
    render html: "hello world"
  end


end
