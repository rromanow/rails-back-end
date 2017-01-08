module LessonService

  def lessons
    lessons = []
    i = 1
    LessonSchedule.where("end_date >= :date", date: DateTime.now).find(batch_size: 10) do |ls|
      (0..ls.lessons_remaining_schedule - 1).each do |v|
        lessons << {
          id: i,
          startsAt: ls.lesson_start + v.week,
          endsAt: ls.lesson_end + v.week,
          title: "Lesson"
        }
        i += 1
      end
    end
    lessons
  end



end