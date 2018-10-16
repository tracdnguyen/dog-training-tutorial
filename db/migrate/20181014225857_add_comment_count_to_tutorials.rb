class AddCommentCountToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :comments_count, :integer
  end
end
