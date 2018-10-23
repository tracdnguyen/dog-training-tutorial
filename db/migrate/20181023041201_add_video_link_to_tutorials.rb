class AddVideoLinkToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :video_link, :string
  end
end
