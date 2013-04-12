class GiveNames < ActiveRecord::Migration
  def change
  	change_table :teams do |t|
  		t.string :name
  	end
  end
end
