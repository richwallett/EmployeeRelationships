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

require 'test_helper'

class EmployeeProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
