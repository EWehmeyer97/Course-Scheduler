class SessionsController < ApplicationController
  def new
  end

  #the commented out sections will perform password auth once hashing is added
  def create
  	student_user = Student.authenticate(params[:session][:email], params[:session][:password])
    if student_user
  	  log_in_student student_user 
      session[:student_id] = student_user.id
      redirect_to student_path(student_user)
  	else
  		professor_user = Professer.authenticate(params[:session][:email], params[:session][:password])
  		if professor_user 
  			log_in_professor professor_user
  			redirect_to professer_path(professor_user)
  		else
  			admin_user = Admin.authenticate(params[:session][:email], params[:session][:password])
  			if admin_user
  				log_in_admin admin_user
  				redirect_to login_admin_path(admin_user)
  			else
  			 flash[:danger] = 'Invalid email/password combination'
  			 redirect_to '/login'
        end
  		end
  	end
  end

  def destroy
  end
end
