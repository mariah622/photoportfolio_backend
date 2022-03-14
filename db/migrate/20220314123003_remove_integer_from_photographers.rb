class RemoveIntegerFromPhotographers < ActiveRecord::Migration[6.1]
  def change
    remove_column :photographers, :integer, :string
  end
end
