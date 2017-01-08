class LessonsController < ApplicationController
  def index
    render json: {lessons: LessonSchedule.last.lessons}
  end
end
