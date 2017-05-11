class BoardController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
  end
  
  def show
    @post = Post.find(params[:id])
    
    @replies = @post.replies #포스트에 속한 댓글들만 가져오는 코드
  end

  def create_reply
    reply = Reply.new
    reply.content = params[:reply]
    reply.post_id = params[:id]
    reply.save
    
    redirect_to :back
  end
end
