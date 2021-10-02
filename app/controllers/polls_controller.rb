class PollsController < ApplicationController
    def index
        @polls = Poll.all
    end
    def show
        @poll = Poll.find(params[:id])
    end
    def new 
        @poll = Poll.new
    end
    def create
        @poll = Poll.new(poll_params)

        if @poll.save
            redirect_to edit_poll_path(@poll)
        else
            render :new
        end
    end
    def edit
        @poll = Poll.find(params[:id])
    end
    def update
        
    end
    def destroy
        @poll = Poll.find(params[:id])
        @poll.destroy

        redirect_to root_path
    end
    private
        def poll_params
            params.require(:poll).permit(:title)
        end
end
