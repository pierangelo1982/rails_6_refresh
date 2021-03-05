class CreateMyTotals < ActiveRecord::Migration[6.1]
  def change
    create_table :my_totals do |t|
      t.integer :first_operator
      t.integer :second_operator
      t.integer :total

      t.timestamps
    end
  end
end
