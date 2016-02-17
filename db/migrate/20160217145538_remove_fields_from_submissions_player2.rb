class RemoveFieldsFromSubmissionsPlayer2 < ActiveRecord::Migration
  def change
      remove_column :submissions, :g2_club, :string
      remove_column :submissions, :g2_venue, :string
      remove_column :submissions, :g2_position, :string
  end
end
