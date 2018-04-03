require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test

	# def setup
	# 	#all Instances have to have different var names here
	# 	@bank_account = BankAccount.new("John", 500, "business")
	# 	@bank_account2 = BankAccount.new("Alan", 500, "business")
	# end

	def  test_student_name
		@student = Student.new("Roberto", "G5")
		assert_equal("Roberto", @student.student_name)
	end	

	def  test_cohort_name
		@student = Student.new("Roberto", "G5")
		assert_equal("G5", @student.cohort)
	end

	def  test_set_student_name
		@student = Student.new("Dave", "G5")
		assert_equal("Dave", @student.student_name)
	end	

	def  test_set_student_cohort
		@student = Student.new("Dave", "G4")
		assert_equal("G4", @student.cohort)
	end

	def  test_student_to_talk
		@student = Student.new("Dave", "G4")
		assert_equal("I can talk!", @student.student_to_talk)
	end	

	def  test_favourite_language
		@student = Student.new("Dave", "G4")
		assert_equal("I love Ruby", @student.favourite_language("Ruby"))
	end	

end
