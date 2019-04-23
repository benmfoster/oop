class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete_tasks
    incomplete_task_names.length
  end

  def delete_complete_tasks
    incomplete_task_names
  end

  def sort_by_priority
    hash = Hash.new(0)
    @tasks.each do |task|
      hash[task.name] = task.priority
    end
    hash.sort
    prioritized = []
    hash.each do |arr|
      prioritized << arr[0]
    end
    prioritized
  end

end