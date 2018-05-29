class TopController < ApplicationController
  def index
    @topics = Topic.order("id")
  end
end
