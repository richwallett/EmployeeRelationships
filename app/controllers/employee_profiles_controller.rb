class EmployeeProfilesController < ApplicationController
  def new
    @employee_profile = EmployeeProfile.new
  end

  def create
    @employee_profile = EmployeeProfile.new(params[:employee_profile])
    if @employee_profile.save
      redirect_to employee_path(@employee_profile.employee.id)
    else
      render :new
    end
  end

  def index
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
