class AddDayToEmployeeProfiles < ActiveRecord::Migration
  	change_table :employee_profiles do |t|
  		t.date :day
  	end
end
