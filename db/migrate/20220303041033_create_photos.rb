class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :caption
      t.integer :likes

      t.timestamps
    end
  end
end
