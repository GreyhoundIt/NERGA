class Renamecolunm < ActiveRecord::Migration
  def change
    rename_column :submissions, :type, :league
  end
end
