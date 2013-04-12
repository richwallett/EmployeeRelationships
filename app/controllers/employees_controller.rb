class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.employee_profile.build
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def show
    @employee = Employee.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
