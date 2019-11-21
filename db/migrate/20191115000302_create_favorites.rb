class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :favorited, polymorphic: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
