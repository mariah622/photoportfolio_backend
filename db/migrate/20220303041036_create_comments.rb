class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :description
      t.belongs_to :photo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
