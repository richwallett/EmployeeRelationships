class AddSupervisorIdToTeam < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.integer :supervisor_id
  	end
  end
end
