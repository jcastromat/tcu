# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  carnet     :integer          not null
#  project_id :integer          not null
#  firstName  :string           not null
#  lastName   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

include StudentsHelper

class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    @student.save
    redirect_to projects_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to projects_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    flash.notice = "Student '#{@student.firstName} #{@student.lastName}' Updated!"

    redirect_to projects_path
  end

end
