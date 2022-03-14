class AddAgeToPhotographers < ActiveRecord::Migration[6.1]
  def change
    add_column :photographers, :age, :integer
  end
end
