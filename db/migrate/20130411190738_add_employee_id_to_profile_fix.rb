class AddEmployeeIdToProfileFix < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		remove_column(:teams, :employee_id)
  	end
  	change_table :employee_profiles do |t|
  		t.integer :employee_id
  	end
  end
end
