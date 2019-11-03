class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :recipe
      t.references :user

      t.timestamps
    end
  end
end
