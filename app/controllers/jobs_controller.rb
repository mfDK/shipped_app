class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
  	@job = Job.new
  end

  def create
  	@job = current_user.jobs.build(job_params)
  	if @job.save
  		redirect_to user_job_path(current_user,@job)
      # Form fors and path helpers need to same things
      # Look at the form_for whenever you are using
      # path helpers
  	else
  		render :new
  	end
  end

  def edit
    # @job = current_user.jobs.find(params[:id])
    @job = Job.where(user_id: params[:user_id], id: params[:id]).first
    puts "my params are: " + params.inspect
  end

  def update
    # byebug
    puts "my params are: " + params.inspect
    # @job = current_user.jobs.find(params[:id])
    @job = Job.where(user_id: params[:user_id], id: params[:id]).first
    @job.update(job_params)
    @job.save
    redirect_to user_job_path(current_user,@job)
    # if @job.save
    #   redirect_to user_job_path(current_user,@job)
    # else
    #   puts params.inspect
    # end
  end

  def destroy 
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to user_path(current_user)
  end

  private
  def job_params 
  	params.require(:job).permit(:name,:container_need,:cargo,:cost,:origin,:destination,:ship_id)
  end

end
