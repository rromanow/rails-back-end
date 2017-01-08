class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :parent_name
      t.string :parent_phone
      t.datetime :birthday

      t.timestamps null: false
    end
  end
end
