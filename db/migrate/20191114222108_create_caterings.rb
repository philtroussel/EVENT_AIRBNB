class CreateCaterings < ActiveRecord::Migration[5.2]
  def change
    create_table :caterings do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
