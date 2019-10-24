class MembersController < ApplicationController
    def index
        @members = Member.all
    end

    def show
        @member = Member.find(params[:id])
    end

    def new
        @members = Member.all
        # @member = Member.find(params[:id])
    end

    def create
        @member = Member.new(member_params)
               
        @member.save
        redirect_to @member
    end

    private
    def member_params
        params.require(:member).permit(:name, :email, :team_name, :project_name, :position)
    end
end
