class TaskController

  def self.list
    task = Task.all
    id = 1
    TaskView.header
    task.each do |todo|
      TaskView.listed_display(id, todo.done, todo.desc)
      id += 1
    end
  end

  def self.add(task)
    new_task = Task.create(desc: task, done: false)
    TaskView.added_display(new_task.desc)
  end

  def self.delete(id_delete)
    #make an array of ids in the list
    id = Task.pluck (:id)
    did = id[id_delete.to_i - 1]
    del_task = Task.find(did)
    # output for .find is objects
    # output for .where is array
    TaskView.deleted_display(del_task.desc)
    Task.where(id: did).destroy_all
  end

  def self.done(id_update)
    id = Task.pluck (:id)
    did = id[id_update.to_i - 1]
    upd_task = Task.find(did)
    # output for .find is objects
    # output for .where is array
    TaskView.done_display(upd_task.desc)
    Task.update(did, done: true)
  end
end