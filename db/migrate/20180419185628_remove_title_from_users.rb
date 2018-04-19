class RemoveTitleFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :quotes, :title
  end
end
