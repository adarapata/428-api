class AddColumnUsers < ActiveRecord::Migration
  def change
    add_column :users, :kill_count, :integer
  end
end
