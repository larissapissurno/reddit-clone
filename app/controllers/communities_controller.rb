class CommunitiesController < ApplicationController
  before_action :authenticate_account!, except: [:show]

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
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

  def community_params
    params.require(:community).permit(:name, :url, :rules)
  end
end