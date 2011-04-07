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

    ## TODO: proteger isso para ver se o cara pode acessar
    def show
      @stream = Stream.find(params[:id])
      @user = User.find(@stream.user_id)
      @tasks = @stream.tasks.paginate(:page => params[:page])
      @title = @stream.title
      @task = Task.new
    end
      
    
    def destroy
    end
    
    def new
      @stream = Stream.new
      @title = "New Stream"
    end
end
