# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        lists#index
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#     new_list_product_item GET    /lists/:list_id/product_items/new(.:format)                                              lists/product_items#new
#                     lists GET    /lists(.:format)                                                                         lists#index
#                           POST   /lists(.:format)                                                                         lists#create
#                  new_list GET    /lists/new(.:format)                                                                     lists#new
#                 edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                      list GET    /lists/:id(.:format)                                                                     lists#show
#                           PATCH  /lists/:id(.:format)                                                                     lists#update
#                           PUT    /lists/:id(.:format)                                                                     lists#update
#                           DELETE /lists/:id(.:format)                                                                     lists#destroy
#         products_category GET    /categories/:id/products(.:format)                                                       categories#products
#                categories GET    /categories(.:format)                                                                    categories#index
#                           POST   /categories(.:format)                                                                    categories#create
#              new_category GET    /categories/new(.:format)                                                                categories#new
#             edit_category GET    /categories/:id/edit(.:format)                                                           categories#edit
#                  category GET    /categories/:id(.:format)                                                                categories#show
#                           PATCH  /categories/:id(.:format)                                                                categories#update
#                           PUT    /categories/:id(.:format)                                                                categories#update
#                           DELETE /categories/:id(.:format)                                                                categories#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root 'lists#index'
  devise_for :users
  resources :lists do
    resources :product_items, module: :lists, only: [:new]
  end
  resources :categories do
    member do
      get :products
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
