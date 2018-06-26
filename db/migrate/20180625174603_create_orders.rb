class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :number
      t.string :user
      t.text :comment

      t.timestamps
    end
  end
end
