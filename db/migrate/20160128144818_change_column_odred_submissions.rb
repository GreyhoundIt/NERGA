class ChangeColumnOdredSubmissions < ActiveRecord::Migration
  def change
    change_column :submissions, :team, :string, after: :id
  end
end
