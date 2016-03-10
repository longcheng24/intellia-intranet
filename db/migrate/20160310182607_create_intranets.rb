class CreateIntranets < ActiveRecord::Migration
  def change
    create_table :intranets do |t|
      t.string :test_column

      t.timestamps null: false
    end
  end
end
