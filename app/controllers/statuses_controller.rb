class StatusesController < ApplicationController

  def index
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
      if @status.save
        render(json: {message: 'Status updated'})
      else
        render(json: {message: 'ERROR, NO UPDATE'}, status: 418)
      end
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
  def status_params
    params.require(:status).permit(:status_update, :user_id)
  end


end
