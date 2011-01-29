class QuestsController < InheritedResources::Base
  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

  def show
    @user = User.first
    @quest = Quest.find(params[:id])
    #@reward_choices = @user.available_rewards
  end

  def new
    @user = User.first
    @quest = Quest.new
  end
end
