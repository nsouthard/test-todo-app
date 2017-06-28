class List < ApplicationRecord
  has_many :tasks

  def complete_all_tasks!
    tasks.each do |task|
      task.update(complete: true)
    end
  end

  # def complete_all_tasks!
  #   tasks.update_all(complete: true)
  # end

  def snooze_all_tasks!
    tasks.each do |task|
      task.snooze_hour!
    end
  end

  # def snooze_all_tasks!
  #   tasks.each { |task| task.snooze_hour! }
  # end

  def total_duration
    total = 0
    tasks.each do |task|
      total += task.duration
    end
    return total
  end

  # def total_duration
  #   tasks.sum(:duration)
  # end

  def incomplete_tasks
    array_of_tasks = []
    tasks.each do |task|
      if !task.complete
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end

  # def incomplete_tasks
  #   tasks.select { |task| !task.complete }
  # end

  def favorite_tasks
    array_of_tasks = []
    tasks.each do |task|
      if task.favorite
        array_of_tasks << task
      end
    end
    return array_of_tasks
  end
end

# def favorite_tasks 
#   tasks.select{ |tasks| task.favorite }
# end
