class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to @task #te redirige a /task/1
    end
  end

  def new
    @task = Task.new
  end

  def update
  end

  def edit
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    Task.find(params[:id]).try(:delete)
    redirect_to tasks_path 
  end
end
