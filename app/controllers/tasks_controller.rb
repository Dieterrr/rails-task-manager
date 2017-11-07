class TasksController < ApplicationController
   before_action :set_task, only: [:show, :edit, :update, :destroy]
  def name
  end

  def details
  end

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(user_params)
    redirect_to tasks_path
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def user_params
   params.require(:task).permit(:name, :details)
 end
end
