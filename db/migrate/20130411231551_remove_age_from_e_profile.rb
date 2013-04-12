class RemoveAgeFromEProfile < ActiveRecord::Migration
	change_table :employee_profiles do |t|
  		remove_column(:employee_profiles, :age)
  	end
end
