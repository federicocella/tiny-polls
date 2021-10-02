class ChoicesController < ApplicationController
    def create
        @poll = Poll.find(params[:poll_id])
        @choice = @poll.choices.create(choice_params)
        redirect_to poll_path(@poll)
    end

    def destroy
        @poll = Poll.find(params[:poll_id])
        @choice = @poll.choices.find(params[:id])
        @choice.destroy
    end
    
      private
        def choice_params
          params.require(:choice).permit(:title)
        end
end
