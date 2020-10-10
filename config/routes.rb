Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "tasks", to: "tasks#index"                           # List all tasks
  get "tasks/new", to: "tasks#new"                         # Show create form
  get "tasks/:id", to: "tasks#show", as: "task"            # List one task
  post "tasks", to: "tasks#create"                         # Create task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"  # Show edit form
  patch "tasks/:id", to: "tasks#update"                    # Post edit
  delete "tasks/:id", to: "tasks#destroy"                  # Delete task

end
