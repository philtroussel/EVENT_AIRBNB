class ChangeTypeAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_column :caterings, :type, :catering_type
  end
end
