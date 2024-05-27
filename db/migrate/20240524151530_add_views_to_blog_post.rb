class AddViewsToBlogPost < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :views, :integer
  end
end
