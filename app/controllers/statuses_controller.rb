class StatusesController < ApplicationController

  def index
  end

  def new
    @status = Status.new
  end

  def create
    if params[:status][:status_update] == "something"
      params[:status][:status_update] = LiterateRandomizer.sentence
    elsif params[:status][:status_update] == "something-smart"
      params[:status][:status_update] = Faker::Hacker.say_something_smart
    elsif params[:status][:status_update] == "something-short"
      params[:status][:status_update] = Faker::Company.catch_phrase
    elsif params[:status][:status_update] == "something-long"
      params[:status][:status_update] = LiterateRandomizer.paragraph
    elsif params[:status][:status_update] == "something-latin"
      params[:status][:status_update] = Faker::Lorem.sentence
    end
    @status = Status.new(status_params)
      if @status.save
        render(json: {message: 'Status updated', post: params[:status][:status_update]})
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
