class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :ingredients
      t.string :instructions
      t.references :chef

      t.timestamps
    end
  end
end
