class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :section
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
