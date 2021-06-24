class CommentsController < ApplicationController
    before_action :find_event

    def new
        @comment = Comment.new
    end

    def edit 
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
          redirect_to event_path(find_event), notice: "Your event was updated"
        else
          render :edit
        end
      end

    def create
        @comment = Comment.new(comment_params)
        @comment.commented_event_id = @event.id
        @comment.user_id = current_user.id
        
        if @comment.save
            redirect_to event_path(@event)
        else
            render 'new'
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to event_path(@event)
    end


    private

    def comment_params
        params.require(:comment).permit(:content, :rating)
    end
    
    def find_event

        begin
            @comment = Comment.find(params[:id])
            @event = Event.find(@comment.commented_event_id)
        rescue ActiveRecord::RecordNotFound  
            return @event = Event.find(params[:event_id])
        end
    end
end