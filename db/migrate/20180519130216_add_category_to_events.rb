class AddCategoryToEvents < ActiveRecord::Migration[5.1]
  def change
      add_column :events, :category, :string
  end
end
