class AddEmployeeIdToProfile < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.integer :employee_id
  	end
  end
end
