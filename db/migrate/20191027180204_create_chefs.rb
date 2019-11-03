class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :firstName
      t.string :lastName
      t.string :password_digest
      t.string :gender
      t.date :DOB
      t.string :email
      t.references :restaurant

      t.timestamps
    end
  end
end
