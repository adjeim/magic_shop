Rails.application.routes.draw do

	devise_for :users, :controllers => { registrations: 'registrations' }

	resources :products, :orders, :comments

end
