class TasksController < ApplicationController
  def index
    @tasks = ["Clean garage", "Kill spiders", "Play vidya games"]
  end

  def new
  end
end
