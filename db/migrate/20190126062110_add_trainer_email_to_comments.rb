class AddTrainerEmailToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :trainer_email, :string
  end
end
