class TaskListController < ApplicationController
  def new
    @task_list = TaskList.new
    @task_list.description = {'this is a task' => false, 'this is another task' => true}
  end
end
