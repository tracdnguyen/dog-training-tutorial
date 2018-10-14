class AddCommentIdToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :comment_id, :integer
  end
end
