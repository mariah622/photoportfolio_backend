class AddTypeToCamera < ActiveRecord::Migration[6.1]
  def change
    add_column :cameras, :camera_type, :string
  end
end
