class CreateOrderContents < ActiveRecord::Migration[5.2]
  def change
    create_table :order_contents do |t|
      t.decimal :count, precision: 10, scale: 2
      t.references :order, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
