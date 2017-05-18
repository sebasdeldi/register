class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :names
      t.string :password
      t.string :last_names
      t.integer :birth_year
      t.string :email
      t.string :ocupation
      t.string :address
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
