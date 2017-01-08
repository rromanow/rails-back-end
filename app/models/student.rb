class Student < ActiveRecord::Base
  has_many :lesson_schedules

  def age
    (DateTime.now - self.birthday).year
  end

  def is_active?
    d = DateTime.now - 200.years # Dummy date as a nil guard
    (self.lession_schedules.order(created_at: :desc).last.end_date || d) > DateTime.now
  end

end
