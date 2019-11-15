class AddUserIdToCatering < ActiveRecord::Migration[5.2]
  def change
    add_column :caterings, :user_id, :integer
  end
end
