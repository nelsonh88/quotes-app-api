class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :quotes, :text, :quote
  end
end
