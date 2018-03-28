Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('board' => 'board#index')
  get('cards' => 'cards#index')

  resources :board
  resources :cards
  resources :lanes

end
