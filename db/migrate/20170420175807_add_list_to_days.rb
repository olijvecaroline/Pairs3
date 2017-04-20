class AddListToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :list, :text
  end
end
