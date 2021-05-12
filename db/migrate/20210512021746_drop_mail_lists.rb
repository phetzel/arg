class DropMailLists < ActiveRecord::Migration[5.2]
  def change
    drop_table :mail_lists
  end
end
