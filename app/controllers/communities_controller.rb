class CommunitiesController < ApplicationController
  before_action :authenticate_account!, except: [ :show ]
  before_action :set_community, only: [ :show ]

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @posts = @community.posts

    # debug the @posts variable
    puts @posts.inspect
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    @community.account_id = current_account.id

    if @community.save
      redirect_to communities_path
    else
      render :new
    end
  end

  private

    def set_community
      @community = Community.find(params[:id])
    end

    def community_params
      params.require(:community).permit(:name, :url, :rules)
    end
end
