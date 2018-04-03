require 'minitest/autorun'
require 'minitest/rg'

require_relative '../library.rb'

class TestLibrary < MiniTest::Test

  def setup

    @my_library = Library.new([
    { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
     },
     {
      title: "hitchhikers_guide_to_the_galaxy",
      rental_details: {
        student_name: "Dave",
        date: "08/10/2018"
      }
      },

        ])
end