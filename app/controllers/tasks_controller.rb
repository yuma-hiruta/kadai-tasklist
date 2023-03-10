class TasksController < ApplicationController
  
  before_action :set_task,only:[:show,:edit,:update,:destroy]
  
  def index
    @tasks = Task.all
  end
  
  def show

  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "正常にタスクが登録されました。"
      redirect_to @task
    else
      flash.now[:danger] = "タスクが登録できませんでした。"
      render :new
    end
  end
  
  def edit

  end
  
  def update
    if @task.update(task_params)
      flash[:success] = "正常に更新されました。"
      redirect_to @task
    else
      flash.now[:danger] = "更新に失敗しました。"
      render :edit
    end
  end
  
  def destroy

    @task.destroy
    
    flash[:success] = "タスクは削除されました。"
    redirect_to tasks_url
  end
  
  private
  
  def set_task
    @task = Task.find(params[:id])
  end
  
  #strong parameter
  def task_params
    params.require(:task).permit(:status,:content)
  end
end
