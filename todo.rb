require_relative 'config/application'

command = ARGV
if command[0] == "add"
  TaskController.add(command[1..-1].join(" "))
elsif command[0] == "list"
  TaskController.list
elsif command[0] == "delete"
  TaskController.delete(command[1])
elsif command[0] == "done"
  TaskController.done(command[1])
else
end
