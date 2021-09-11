class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    Task.create(title: params[:task][:title], contents: params[:task][:contents])
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    Task.find(params[:id]).update(title: params[:task][:title], contents: params[:task][:contents])
  end

  def destroy
    @task = Task.find(params[:id]).destroy
    redirect_to, notice: '削除しました'
  end
end