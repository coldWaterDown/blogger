class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id]).destroy
    flash.notice = "Tag '#{@tag}' Destroy!"
    redirect_to article_path(@article)
  end
end