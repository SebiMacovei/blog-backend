class AddAuthorToBlogPost < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :author, :string
  end
end
