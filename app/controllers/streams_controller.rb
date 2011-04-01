class StreamsController < ApplicationController
    before_filter :authenticate, :only => [:new, :create, :destroy]
 
    def create
      @stream  = current_user.streams.build(params[:stream])
      if @stream.save
        flash[:success] = "Stream created succesfully!"
        redirect_to root_path
      else
        render 'pages/home'
      end
    end
    
    def destroy
    end
    
    def new
      @stream = Stream.new
      @title = "New Stream"
    end
end
