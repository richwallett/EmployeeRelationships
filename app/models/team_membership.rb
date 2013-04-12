# == Schema Information
#
# Table name: team_memberships
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  team_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeamMembership < ActiveRecord::Base
  attr_accessible :employee, :team
  belongs_to :team
  belongs_to :employee
end
