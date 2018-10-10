class AddTrainerIdToTutorials < ActiveRecord::Migration[5.2]
  def change
    add_column :tutorials, :trainer_id, :integer
  end
end
