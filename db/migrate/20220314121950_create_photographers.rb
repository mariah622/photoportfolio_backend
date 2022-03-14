class CreatePhotographers < ActiveRecord::Migration[6.1]
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :hometown
      t.string :age
      t.string :integer
      t.integer :years_experience
      t.string :hobbies

      t.timestamps
    end
  end
end
