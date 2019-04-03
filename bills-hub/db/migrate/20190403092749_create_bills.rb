class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :utility, foreign_key: true
      t.datetime :bill_date
      t.integer :cost
      t.string :payment_type
      t.string :payment_freq

      t.timestamps
    end
  end
end