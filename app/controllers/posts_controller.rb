class PostsController < ApplicationController

# A `params` Hash will be accessible in the controller.  
# Submitted form data is put into the params Hash, alongside captured route parameters. 

  http_basic_authenticate_with name: 'admin', password: '1234', except: [:index, :show]

  def index 
    # Any controller instance variables created here will be avaiable in the view 
    # this action renders.  So the posts/index view now has @post with this array. 
    @post = Post.all
  end

  def show
    # If a route includes params, they can be accessed in the controller action.
    # They will be in the params hash. The id will be called id. 
    # For "higher level" path params, the ids will be in the format hlmodel_id. 
    @post = Post.find(params[:id])
  end

  def new 
    # We need to instantiate a Post model instance to use in the view to generate the form. 
    # This allows the model's definition of requirements to be used for form validation.  
    # Validate rules will abort a save and generate error messages in errors.  
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to posts_path
    else 
      # In the official docs, render receives the symbol :new.  Optional param type? 
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if (@post.update(post_params))
      # The redirect_to and link_to helpers will take a path or a model object.
      # If you pass a model object, they will derive the right path.  
      redirect_to @post 
    else 
      render 'edit'
    end
  end

  def destroy 
    logger.info "VVVVVVVVVV"
    logger.info params
    @post = Post.find(params[:id])
    @post.destroy 
    redirect_to posts_path 
  end

  # Strong parameters types the params passed to requests and db.  
  private def post_params 
    # Prevents malicious code submission from forms.  
    params.require(:post).permit(:title, :body, :status)
  end 

end
