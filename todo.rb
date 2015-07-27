require_relative 'config/application'
require 'byebug'

class DoTask

  def list
    task = Task.all
    id = 1
    task.each do |todo|
      puts "#{id} #{todo.done} #{todo.desc}"
      id += 1
    end
  end

  def add(task)
    Task.create(desc: task, done: false)
    puts "Append.."
  end

  def delete(id_delete)
    #make an array of ids in the list
    id = Task.pluck (:id)
    did = id[id_delete.to_i - 1]
    Task.where(id: did).destroy_all
  end

  def done(id)
    Task.update(id, done: true)
  end
end

#Make an instance of DoTask class
task = DoTask.new

#Input
command = ARGV
if command[0] == "add"
  task.add(command[1..-1].join(" "))
elsif command[0] == "list"
  task.list
elsif command[0] == "delete"
  task.delete(command[1])
elsif command[0] == "done"
  task.done(command[1])
else
end
