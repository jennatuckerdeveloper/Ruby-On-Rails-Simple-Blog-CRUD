Rails.application.routes.draw do
  # Written in Ruby DSL (domain specific langauge)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# This maps a request to the posts controller's index action (Post class's public method index)
root 'posts#index'

# The routes, controller actions, and views to do CRUD are called a resource.  
=begin

`resources :posts` will create these, visble in cmd line with `rake routes`
(note:  later versions of rails appear to use `rails routes`)

     posts  GET    /posts                     posts#index
            POST   /posts                     posts#create
   new_post GET    /posts/new                 posts#new
  edit_post GET    /posts/:id/edit            posts#edit
       post GET    /posts/:id                 posts#show
            PATCH  /posts/:id                 posts#update
            PUT    /posts/:id                 posts#update
            DELETE /posts/:id                 posts#destroy

The path prefixes and :params are accessible in the controller actions. 
So posts_path means /posts, and new_post_path means /posts/new.  
These are useful for link_to and redirect_to helpers.  

=end 

resources :posts do 
  resources :comments
end 

end
