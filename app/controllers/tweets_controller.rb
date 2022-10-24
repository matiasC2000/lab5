class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all()
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new(tweet_params)
    @tweet.save
  end

  def tweet_params
    params.require(:tweet).permit(:name, :description)
  end

end
