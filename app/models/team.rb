# == Schema Information
#
# Table name: teams
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  supervisor_id :integer
#  name          :string(255)
#

class Team < ActiveRecord::Base
  attr_accessible :title, :body, :name
  has_many :team_memberships
  has_many :employees, :through => :team_memberships

  has_many :members, :through => :team_memberships, :source => :employee
  has_many :memberships, :through => :team_memberships, :source => :team

  belongs_to :supervisor, :class_name => "Employee", :inverse_of => :team
end
