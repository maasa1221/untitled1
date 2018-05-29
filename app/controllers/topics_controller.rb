class TopicsController < ApplicationController
  def index
    @topics = Topic.order("id")
  end

  def show
    @topic=Topic.find(params[:id])
  end

  def new
    @topic = Topic.new(day: Date.new(2018, 1, 1))
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      redirect_to @topic, notice:"トピック登録しました"
    else
      render "new"
    end
  end

  def update
    @topic=Topic.find(params[:id])
    @topic.assign_attributes(params[:topic])
    if @topic.save
      redirect_to @topic, notice: "トピックを更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @topic=Topic.find(params[:id])
    @topic.destroy
    redirect_to @topic, notice: "トピックを削除しました"
  end
end
