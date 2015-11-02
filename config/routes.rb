Rails.application.routes.draw do
  get '@:username', to: 'users#show', as: 'user_page'
  post '@:username/submissions', to: 'contacts#create', as: 'submissions'
end
