class RemoveTypeFromCamera < ActiveRecord::Migration[6.1]
  def change
    remove_column :cameras, :type, :string
  end
end
