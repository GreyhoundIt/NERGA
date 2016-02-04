class ChangeP1ClubAndVenueName < ActiveRecord::Migration
  def change
    rename_column :submissions, :p1_club, :team
    rename_column :submissions, :p1_venue, :hometeam
  end
end
