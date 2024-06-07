class AddAdminToList < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :admin, :boolean
  end
end
