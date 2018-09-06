class UrlsController < ApplicationController
  def create
    @url = Url.new(content: params[:content])
    if @url.save
      respond_to do |format|
        format.json { render json: @url}
      end
    end
  end
end

# def create
#   @todo = Todo.new(todo_params)
#    if @todo.save
#     respond_to do |format|
#       format.html { redirect_to :root }
#       format.json { render json: @todo}
#     end
#   else
#     render :index
#   end
# end
