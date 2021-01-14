class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @new_student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))

    redirect_to student_path(@student)
  end

  private

  def student_params(*arg)
    params.require(:student).permit(*arg)
  end

end
