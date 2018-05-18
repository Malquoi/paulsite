class ProjectsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index, :show]

before_action :set_project, only: [:show, :edit]



def index

  @projects = Project.all

end

def new
  @project = Project.new
end

def create
  @project = Project.new(project_params)
  if @project.save
    redirect_to project_path(@project)
  else
    render 'projects/new'
  end
end

  def edit
  end

  def show

  end



  private


  def set_project
    @project = Project.find(params[:id])
  end


  def project_params
    params.require(:project).permit(:name, :name2, :category, :presentation, :photo, :date, :ranking, :commentary)
  end


end







