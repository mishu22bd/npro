class ArnsController < ApplicationController
  unloadable

  def index
  	@arns = Arn.all
  end

  def vote
  	 arn = Arn.find(params[:id])
    arn.vote(params[:answer])
    if arn.save
      flash[:notice] = 'Vote saved.'
    end
    redirect_to :action => 'index'
  end
end

def index
  @project = Project.find(params[:project_id])
  @arns = Arn.find(:all) # @project.polls
end
