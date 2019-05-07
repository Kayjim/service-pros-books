Rails.application.routes.draw do
  root 'welcome#index'
  get 'index' => 'welcome#index'

  get 'title' => 'welcome#title'
  get 'author' => 'welcome#author'
  get 'year' => 'welcome#year'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
