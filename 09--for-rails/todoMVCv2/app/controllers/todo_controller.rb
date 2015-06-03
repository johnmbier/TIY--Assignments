class TodoController < ApplicationController

  def index
    @todos = Todo.all
    @all_todos_count = Todo.count
    @flag = 'all'
  end

  def active
    @todos = Todo.where(complete: false)
    @all_todos_count = Todo.count
    @flag = 'active'
    render :index
  end

  def completed
    @todos = Todo.where(complete: true)
    @all_todos_count = Todo.count
    @flag = 'completed'
    render :index
  end

  def create
    params[:todo][:name].strip!
    if params[:todo][:name].length > 0 
      Todo.create(params.require(:todo).permit(:name)) 
    end
      redirect_to "/todo"
  end

  def toggle_all
    if Todo.where(complete: false).any?
     Todo.update_all complete: true
    else
     Todo.update_all complete: false
    end 
    redirect_to "/todo"
  end

  def clear_completed
    Todo.where(complete:true).destroy_all
    redirect_to "/todo"
  end

  def edit
    @todos = Todo.all
    todo = Todo.find(params[:id])
    todo.being_edited = true
    render :index
  end

  def toggle
    todo = Todo.find(params[:id])
    todo.toggle!(:complete)
    redirect_to "/todo"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to "/todo"
  end

  def update
    todo = Todo.find(params[:id])
    params[:todo][:name].strip!
    if params[:todo][:name].length > 0 
      Todo.update(params.require(:todo).permit(:name)) 
    else
      todo.destroy
    end
    redirect_to "/todo"
  end 
    
end
