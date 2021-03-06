class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :username
      t.string :content
      t.integer :editable, :default => false

      t.timestamps
    end
  end
end
