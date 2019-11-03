class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :gender
      t.date :DOB
      t.string :email
      t.references :state_country

      t.timestamps
    end
  end
end
