class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title,   null: false
      t.string :genre
      t.string :author
      t.string :publishing
      t.string :record_date,  null: false
      t.text :memo
      t.text :impression
      t.integer :reading_situation_id, null: false
      t.integer :evaluation_id
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
