class CreateMcqs < ActiveRecord::Migration[5.0]
  def change
    create_table :mcqs do |t|
      t.string :content
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :correct
      t.timestamps
    end
  end
end
