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
  
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to(@task, :notice => 'Task was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
