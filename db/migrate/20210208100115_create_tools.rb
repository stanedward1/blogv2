class CreateTools < ActiveRecord::Migration[6.1]
  def change
    create_table :tools do |t|
      t.string :title
      t.string :description
      t.string :file

      t.timestamps
    end
  end
end
