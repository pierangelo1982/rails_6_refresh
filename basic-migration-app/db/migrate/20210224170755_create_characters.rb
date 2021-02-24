class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.belongs_to :publisher, null: false, foreign_key: true
      t.string :name
      t.string :alias
      t.text :note
      t.boolean :evil

      t.timestamps
    end
  end
end
