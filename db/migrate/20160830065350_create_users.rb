class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :reg_no
      t.string :phone
      t.string :email
      t.string :password_digest
      t.string :portfolio
      t.string :repository

      t.timestamps
    end
  end
end
