class CreateMailLists < ActiveRecord::Migration[5.2]
  def change
    create_table :mail_lists do |t|
      t.string :email, null: false
      t.timestamps
    end
  end
end
