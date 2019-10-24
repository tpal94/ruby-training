class ProjectsController < ApplicationController
        def index
                # @project = Project.find(params[:id])
                @projects = Project.all
        end

        def show
        @project = Project.find(params[:id])
        end

        def new
                @projects = Project.all
        # @project = Project.find(params[:id])
        end
        
        def create
        @project = Project.new(project_params)
               
        @project.save
        redirect_to @project
        end
               
        private
        def project_params
        params.require(:project).permit(:user_email, :project_name, :start_date, :end_date, :description)
        end
        
end
