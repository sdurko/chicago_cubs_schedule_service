module ScheduleHelper

  def team_schedule
    Schedule.all.to_a
  end

  def format_result(result)
    if result.zero? then 'LOSS' else 'WIN' end
  end

end
