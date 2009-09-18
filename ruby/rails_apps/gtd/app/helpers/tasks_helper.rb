module TasksHelper

  def show_temporary_message(page, id, message)
    page.replace_html id, message
    page.show id
    page.delay(3) do
      page.replace_html id, ''
      page.hide id          
    end  
  end
  
  def task_id(task)
    'task_%i' % @task.id
  end
  
end
