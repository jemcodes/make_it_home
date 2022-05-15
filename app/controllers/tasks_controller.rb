class TasksController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @task = @room.tasks.create(task_params)
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:room_id])
    @task = room.tasks.find(params[:id])
    @task.destroy
    redirect_to room_path(@room), status: 303
  end

  private
    def task_params
      params.require(:task).permit(:body, :status)
    end
end
