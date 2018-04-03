class Student

# attr_accessor :name, :cohort

  def initialize(student_name, cohort)

    @name = student_name
    @cohort = cohort

  end

	def student_name() 
		return @name
	end

	def cohort() 
		return @cohort
	end

	def set_student_name(name) 
		@name = student_name
	end

	def set_cohort(cohort) 
		@cohort = cohort
	end

	def student_to_talk
	return "I can talk!" 

	end	

	def favourite_language(language)
		"I love #{language}"
	end	

end
