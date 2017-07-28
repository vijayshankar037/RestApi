class AddIndexForAccountSlug < ActiveRecord::Migration[5.1]
  def change
  	add_index :accounts, :slug, unique: :id
  end
end
