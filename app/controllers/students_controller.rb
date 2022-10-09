class StudentsController < ApplicationController

  def index 
    puts "hi"
    render json: Student.all
  end

  def grades 
    data = Student.all.order(grade: :desc)
    render json: data
  end
end
