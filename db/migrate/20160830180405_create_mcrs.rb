class CreateMcrs < ActiveRecord::Migration[5.0]
  def change
    create_table :mcrs do |t|
      t.string :response
      t.belongs_to :mcq, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
