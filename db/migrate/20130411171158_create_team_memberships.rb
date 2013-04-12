class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.references :employee
      t.references :team

      t.timestamps
    end
  end
end
