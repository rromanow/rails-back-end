class CreateLessonRequests < ActiveRecord::Migration
  def change
    create_table :lesson_requests do |t|
      t.string :student_first_name
      t.string :student_last_name
      t.string :student_middle_name
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :parent_middle_name
      t.integer :phone
      t.string :email
      t.datetime :starts_at
      t.datetime :ends_at
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
