class TaskView

  def self.header
    puts "Here's the task list: "
  end

  def self.listed_display(id,done,desc)
    puts "#{id} [#{done}] #{desc}"
  end

  def self.added_display(desc)
    puts "Added #{desc} to the task list"
  end

  def self.deleted_display(task)
    puts "Deleted #{task}"
  end

  def self.done_display(task)
    puts "Done for #{task}"
  end

end