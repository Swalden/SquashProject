class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :club_id
      t.integer :division_id

      t.timestamps
    end
  end
end
