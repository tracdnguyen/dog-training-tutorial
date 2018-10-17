class AddOauthToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :provider, :string
    add_column :trainers, :uid, :string
  end
end
