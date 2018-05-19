class AddNewColumnToTexts < ActiveRecord::Migration[5.1]
  def change
    add_column :texts, :presentation_author, :text
  end
end
