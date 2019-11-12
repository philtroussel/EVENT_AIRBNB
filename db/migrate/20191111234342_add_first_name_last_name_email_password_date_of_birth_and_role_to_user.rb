class AddFirstNameLastNameEmailPasswordDateOfBirthAndRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :role, :string
  end
end
