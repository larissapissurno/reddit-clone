class PublicController < ApplicationController
  def index
    @communities = Community.all.limit(5)
    @posts = Post.all.limit(5)
  end
end
