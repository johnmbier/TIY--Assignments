class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def new
    @todo = Todo.new
  end

  def create
    params[:todo][:name].strip!   
    if params[:todo][:name].length > 0
      @todo = Todo.create(params.require(:todo).permit(:name))
    end
  end

  def destroy
  	@todo = Todo.find(params[:id])
  	@todo.destroy
  end	
  
  def active
    @todos = Todo.where(completed: false)
  end
  
  def completed
    @todos = Todo.where(completed: true) 
  end   
  
  def update
    @todo = Todo.find(params[:id])
    params[:todo][:name].strip!
    if params[:todo][:name].length > 0 
      Todo.update(params.require(:todo).permit(:name)) 
    else
      todo.destroy
    end
  end   

  def toggle
    todo = Todo.find(params[:id])
    todo.toggle!(:completed)
  end 


end
