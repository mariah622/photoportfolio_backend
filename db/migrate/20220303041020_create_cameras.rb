class CreateCameras < ActiveRecord::Migration[6.1]
  def change
    create_table :cameras do |t|
      t.string :brand
      t.string :name
      t.string :type
      t.string :overview

      t.timestamps
    end
  end
end
