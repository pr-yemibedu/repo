class TasksController < ApplicationController

  def get_standard_data
    @users = User.find(:all)
    @categories = Category.find(:all)
    @priorities = Priority.find(:all)
    @tasks = Task.find(:all, :order => 'CREATED ASC')
    @tasks = @tasks.insert(0, Task.new)  
  end
  
  def index
    get_standard_data
  end
  
  def add
    @task = Task.new do |t|
      t.user_id = session[:user_id]
      t.category_id = 1 # None
      t.priority_id = 1 # None
      t.title = params[:title]
      t.notes = params[:notes]
      t.due = params[:due] if params[:due]
      t.created = DateTime.now    
      t.updated = t.created
    end
    @task.save
    @task
  end
  
  def update
    get_standard_data
    
    if params[:id]
      @task = Task.find(params[:id])
      @task.title = params[:title]
      @task.category_id = params['task']['category_id']
      @task.priority_id = params['task']['priority_id']      
      @task.notes = params[:notes]
      @task.updated = DateTime.now
      @task.save
      render :update do |page|
        page.replace task_id(@task), :partial => 'task', :object => @task
        show_temporary_message(page, 'notice', 'task updated')
        page.visual_effect :highlight, task_id(@task), :duration => 1.5
      end
    else
      @task = add
      render :update do |page|
        page.replace 'task_0', :partial => 'add_task_and_task', :object => @task
        page.replace_html 'item-count', "#{Task.find(:all).size} items"
        show_temporary_message(page, 'notice', 'task added')        
        page.visual_effect :highlight, task_id(@task), :duration => 1.5        
      end
    end
  end
  
  def delete
    @task = Task.find(params[:id])  
    Task.delete(params[:id])
    render :update do |page|
      page['task_%i' % params[:id]].remove
      page.replace_html 'item-count', "#{Task.find(:all).size} items"
    end
  end
  
  def update_state
    get_standard_data
    task = Task.find(params[:id])
    task.updated = DateTime.now    
    task.completed = params[:completed] ? task.updated : nil
    task.save
    render :partial => 'show_and_edit_task', :object => task    
  end
  
  def filter
    get_standard_data
    @filtered_tasks = Task.find(:all, :conditions => "completed IS NULL", :order => 'CREATED ASC')
    render :update do |page|
      page.replace 'tasks', :partial => 'task', :collection => @filtered_tasks
    end  
  end
  
  def search
    get_standard_data
    @search_results = "You searched for " + params[:query]
    render(:partial => 'search_results')
  end
  
end
