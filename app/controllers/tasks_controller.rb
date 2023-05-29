class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    # show
  end

  def new
    @tasks = Task.new
  end

  def create
    @task = Task.new(task_params)
    redirect_to action: 'index'

    if @task.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def destroy
    # destroy
  end

  def task_params
    params.require(:task).permit(:content, :is_done)
  end
end
