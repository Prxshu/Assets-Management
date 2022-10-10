class AddUserIdAssests < ActiveRecord::Migration[7.0]
  def change
    add_column :assests,:user_id,:int
  end
end
