class AddCommentToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user, index: true
  end
end
