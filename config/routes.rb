Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # landing page will be home AKA root_path
  root to: 'search#index'
  get '/search' => 'search#search'

  match '*unmatched', to: 'application#render_404', via: :all
end
