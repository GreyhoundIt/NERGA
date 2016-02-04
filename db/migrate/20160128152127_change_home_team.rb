class ChangeHomeTeam < ActiveRecord::Migration
  def change
    rename_column :submissions, :hometeam, :venue
  end
end
