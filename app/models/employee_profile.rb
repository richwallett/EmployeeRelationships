# == Schema Information
#
# Table name: employee_profiles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer
#  height      :string(255)
#  age         :integer
#  food        :string(255)
#  salary      :integer
#  photo       :string(255)
#  day         :date
#

class EmployeeProfile < ActiveRecord::Base
  attr_accessible :name, :employee_id, :day, :photo, :salary, :food, :height
  belongs_to :employee, :inverse_of => :employee_profile
end
