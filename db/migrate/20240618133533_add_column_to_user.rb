class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :img_src, :string, null: false, default: ""
  end
end
