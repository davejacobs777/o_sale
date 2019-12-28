class CommentsController < ApplicationController
  before_action :require_signin
  before_action :set_product

  def create
    @comment = @product.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment has been created"
      redirect_to @product # shortcut for product_path(@product.id)
    else
      @comments = @product.comments   # @comments variable will be available for the rendered show template
      flash.now[:alert] = "Comment has not been created"
      render 'products/show'
    end
  end

  private

  def set_product
    @product = Product.where(id: params[:product_id]).first  #  /products/:product_id/comments
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end