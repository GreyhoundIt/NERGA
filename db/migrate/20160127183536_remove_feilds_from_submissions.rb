class RemoveFeildsFromSubmissions < ActiveRecord::Migration
  def change
    remove_column :submissions, :p1_position, :string
    remove_column :submissions, :p2_club, :string
    remove_column :submissions, :p2_venue, :string
    remove_column :submissions, :p2_position, :string
    remove_column :submissions, :p3_club, :string
    remove_column :submissions, :p3_venue, :string
    remove_column :submissions, :p3_position, :string
    remove_column :submissions, :p4_club, :string
    remove_column :submissions, :p4_venue, :string
    remove_column :submissions, :p4_position, :string
    remove_column :submissions, :p5_club, :string
    remove_column :submissions, :p5_venue, :string
    remove_column :submissions, :p5_position, :string
    remove_column :submissions, :p6_club, :string
    remove_column :submissions, :p6_venue, :string
    remove_column :submissions, :p6_position, :string
    remove_column :submissions, :p7_club, :string
    remove_column :submissions, :p7_venue, :string
    remove_column :submissions, :p7_position, :string
    remove_column :submissions, :p8_club, :string
    remove_column :submissions, :p8_venue, :string
    remove_column :submissions, :p8_position, :string
    remove_column :submissions, :g1_club, :string
    remove_column :submissions, :g1_venue, :string
    remove_column :submissions, :g1_position, :string
    remove_column :submissions, :p2_club, :string
    remove_column :submissions, :p2_venue, :string
    remove_column :submissions, :p2_position, :string
  end
end
