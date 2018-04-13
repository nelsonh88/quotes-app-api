class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :title
      t.string :text
      t.string :author
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
