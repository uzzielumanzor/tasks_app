class TasksController < ApplicationController
  def index
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
  end
end
