class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to tasks_path(@tasks)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def updt
    @tasks = task_params
    @tasks.update(params[:restaurant])
    redirect_to tasks_pasth(@tasks)
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to tasks_path, status: :see_other

  end

end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end

# get 'tasks', to: 'tasks#index' # afficher tout les tach
#   get 'tasks/:id', to: 'tasks#show' #afficher les details d'une task
#   get 'tasks/new', to: 'tasks#new' #creer une nouvelle task
#   get 'tasks/:id/edit', to: 'tasks#edit' #editer une nouvelle task en accedant au formulaire
#   patch 'tasks/:id', to: 'tasks#updt'# afficher la mise a jour aprés l'edition
#   delete 'tasks/:id', to: 'tasks#destroy'# supprimer une tache
