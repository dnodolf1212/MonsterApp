class MonstersController < ApplicationController
 
  def index
    @monsters = Monster.all
    render 'monsters/index' #this is optional!!
  end

  def show 
    @monster = Monster.find_by_id(params[:id])
  end

end