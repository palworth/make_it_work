class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def new
  end

  def create
    challenge = Challenge.new({
          theme: params[:theme]})
  end

  end
