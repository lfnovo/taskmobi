class TasksController < ApplicationController
  
#TODO: faltando MUITAS verificacoes de seguranca

  def create
    @stream  = Stream.find(params[:stream_id])
    @stream.tasks.create!({:title => params[:task][:title], :user_id => 1, :owner => 1})
    
    if @stream.save
      flash[:success] = "Task created succesfully!"
    else
      flash[:error] = "Error creating task"
    end
    
    redirect_to @stream
    
  end
  
  
end
