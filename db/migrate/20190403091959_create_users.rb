class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :location
      t.integer :house_size
      t.integer :age

      t.timestamps
    end
  end
end
