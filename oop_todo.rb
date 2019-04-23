require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat"))
list.add_task(Task.new("Take out trash"))
list.add_task(Task.new("Mow the lawn"))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Mark the first task from the list as incomplete again and print out the incomplete tasks again
puts "Incomplete Tasks:"
list.tasks[0].toggle_complete!
puts list.incomplete_task_names
puts "--------"

# Print out the number of incomplete tasks
puts list.number_of_incomplete_tasks
puts "--------"

# Delete complete tasks from the list and print list

puts list.delete_complete_tasks
puts "--------"

# Check priority of "Feed the cat."
puts list.tasks[0].priority

# Print prioritized task list
puts list.sort_by_priority