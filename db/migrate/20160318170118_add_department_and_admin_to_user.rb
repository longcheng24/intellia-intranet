class AddDepartmentAndAdminToUser < ActiveRecord::Migration
  def change
  	add_column :users, :department, :integer
  	add_column :users, :admin, :boolean
  end
end
