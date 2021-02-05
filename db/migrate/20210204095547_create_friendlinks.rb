class CreateFriendlinks < ActiveRecord::Migration[6.1]
  def change
    create_table :friendlinks do |t|
      t.string :subject
      t.string :picture
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
