class ChangeDateInEmployeeProfile < ActiveRecord::Migration
  	change_table :employee_profiles do |t|
  		remove_column(:employee_profiles, :day)
  	end
end
