Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index' # afficher tout les taches
  get 'tasks/new', to: 'tasks#new' #creer une nouvelle task à partir du formulaire
  post 'tasks', to: 'task#create'#renvoyer la nouvelle tache
  get 'tasks/:id', to: 'tasks#show', as: :show# afficher les details d'une task
  get 'tasks/:id/edit', to: 'tasks#edit' #editer une nouvelle task en accedant au formulaire
  patch 'tasks/:id', to: 'tasks#updt'# afficher la mise a jour aprés l'edition
  delete 'tasks/:id', to: 'tasks#destroy'# supprimer une tache
end

