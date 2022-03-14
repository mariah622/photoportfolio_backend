class RemoveAgeFromPhotographers < ActiveRecord::Migration[6.1]
  def change
    remove_column :photographers, :age, :string
  end
end
