module SessionsHelper
	#Logs in the given user
	def log_in_student(student)
		session[:student_id] = student.id
	end

	def log_in_professor(professor)
		session[:professor_id] = professor.id
	end

	def log_in_admin(admin)
		session[:admin_id] = admin.id
	end

	def current_student
		if session[:student_id]
			@current_student ||=Student.find_by(id: session[:student_id])
		end
	end

	def current_professor
		if session[:professor_id]
			@current_professor ||=Professer.find_by(id: session[:professor_id])
		end
	end

	def current_admin
		if session[:admin_id]
			@current_admin ||=Admin.find_by(id: session[:admin_id])
		end
	end

end
