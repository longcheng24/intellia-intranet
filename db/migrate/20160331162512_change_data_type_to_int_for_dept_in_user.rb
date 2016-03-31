class ChangeDataTypeToIntForDeptInUser < ActiveRecord::Migration
  def change
  	change_column :users, :department, 'integer USING CAST(department AS integer)'
  end

end
