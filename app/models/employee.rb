# == Schema Information
#
# Table name: employees
#
#  id            :integer          not null, primary key
#  supervisor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Employee < ActiveRecord::Base
  attr_accessible :supervisor_id, :supervised_teams_attributes, :employee_profile_attributes

  belongs_to :supervisor, :class_name => "Employee"
  has_many :subordinates, :class_name => "Employee", :foreign_key => "supervisor_id"

  has_many :team_memberships
  has_many :teams, :through => :team_memberships

  has_many :supervised_teams, :class_name => "Team", :inverse_of => :employee
  accepts_nested_attributes_for :supervised_teams

  has_one :employee_profile, :inverse_of => :employee
  accepts_nested_attributes_for :employee_profile
end

