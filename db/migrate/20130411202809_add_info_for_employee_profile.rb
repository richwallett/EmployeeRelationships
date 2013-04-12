class AddInfoForEmployeeProfile < ActiveRecord::Migration
  def change
  	change_table :employee_profiles do |t|
  		t.string :height
  		t.integer :age
  		t.string :food
  		t.string :day
  		t.integer :salary
  		t.string :photo
  	end
  end
end
