class LessonSchedule < ActiveRecord::Base
  include LessonService
  belongs_to :student

  def lesson_start
    DateTime.now.beginning_of_week + (self.lesson_day - 1).day + self.lesson_hour.hour + self.lession_minute.minute
  end

  def lesson_end
    lesson_start + self.lesson_length.minute
  end

  def next_lesson_start
    d = lesson_start
    d > DateTime.now ? d : d + 1.week
  end

  def next_lesson_end
    next_lesson_start + self.lesson_length.minute
  end

  def lessons_remaining_schedule
    lessons = 0
    s = lesson_start
    while s + lessons.week < end_date.end_of_week do
      lessons += 1
    end
    lessons
  end

end
