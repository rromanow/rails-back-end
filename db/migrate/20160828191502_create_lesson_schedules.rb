class CreateLessonSchedules < ActiveRecord::Migration
  def change
    create_table :lesson_schedules do |t|
      t.references :student, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :lesson_day
      t.integer :lesson_hour
      t.integer :lession_minute
      t.integer :lesson_length
      t.boolean :done

      t.timestamps null: false
    end
  end
end
