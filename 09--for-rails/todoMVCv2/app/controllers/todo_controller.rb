class TodoController < ApplicationController
  def index
  	@todos = Todo.all
  end

  def show
  	#@todo = Todo.find(params[:id])
  end

  def new

  end

  def active
  	@todos = Todo.where(complete: false)
    @all_todos_count = Todo.count
    @flag = 'active'
  end
  
  def completed
    @todos = Todo.where(complete: true)
    @all_todos_count = Todo.count
    @flag = 'completed'
  end
  
  def create_todo
    hash = request.query
    hash["name"].strip!
    if hash["name"].length > 0 
      Todo.create(hash) 
    end
   end
  
  def toggle_all
  	Todo.toggle_all
  end
  
  def clear_completed
     Todo.clear_completed
  end
   	

end
