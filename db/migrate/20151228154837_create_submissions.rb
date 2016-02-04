class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :p1_club
      t.string :p1_venue
      t.string :type
      t.string :p1_first_name
      t.string :p1_last_name
      t.float :p1_handicap
      t.integer :p1_position
      t.string :p2_first_name
      t.string :p2_last_name
      t.float :p2_handicap
      t.string :p2_club
      t.string :p2_venue
      t.integer :p2_position
      t.string :p3_first_name
      t.string :p3_last_name
      t.float :p3_handicap
      t.string :p3_club
      t.string :p3_venue
      t.integer :p3_position
      t.string :p4_first_name
      t.string :p4_last_name
      t.float :p4_handicap
      t.string :p4_club
      t.string :p4_venue
      t.integer :p4_position
      t.string :p5_first_name
      t.string :p5_last_name
      t.float :p5_handicap
      t.string :p5_club
      t.string :p5_venue
      t.integer :p5_position
      t.string :p6_first_name
      t.string :p6_last_name
      t.float :p6_handicap
      t.string :p6_club
      t.string :p6_venue
      t.integer :p6_position
      t.string :p7_first_name
      t.string :p7_last_name
      t.float :p7_handicap
      t.string :p7_club
      t.string :p7_venue
      t.integer :p7_position
      t.string :p8_first_name
      t.string :p8_last_name
      t.float :p8_handicap
      t.string :p8_club
      t.string :p8_venue
      t.integer :p8_position
      t.string :g1_first_name
      t.string :g1_last_name
      t.float :g1_handicap
      t.string :g1_club
      t.string :g1_venue
      t.integer :g1_position
      t.string :g2_first_name
      t.string :g2_last_name
      t.float :g2_handicap
      t.string :g2_club
      t.string :g2_venue
      t.integer :g2_position
      t.string :g3_first_name
      t.string :g3_last_name
      t.float :g3_handicap
      t.string :g4_first_name
      t.string :g4_last_name
      t.float :g4_handicap

      t.timestamps
    end
  end
end
