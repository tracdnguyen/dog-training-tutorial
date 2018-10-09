class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.boolean :helpfulness
      t.string :content
      t.belongs_to :trainer
      t.belongs_to :tutorial

      t.timestamps
    end
  end
end
