class ChangeDataTypeOfDepartmentToString < ActiveRecord::Migration
  def change
  	change_column :users, :department, :string
  end
end
