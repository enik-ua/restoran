class FixSectionMenu < ActiveRecord::Migration[5.2]
  def change
    remove_column  :menus, :section, :string
  end
end
