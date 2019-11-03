class CreateStateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :state_countries, id: false do |t|
      t.string :state, null: false
      t.string :country, null: false

      t.timestamps
    end
  end
end
