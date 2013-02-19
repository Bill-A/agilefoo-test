class RemoveIndexTwitterFromUsers < ActiveRecord::Migration
  def change
    remove_index :users, :twitter
    add_index :users, :twitter
  end
end
