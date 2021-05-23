class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]

  def index
    @monsters = Monster.all
    render 'monsters/index' #this is optional!!
  end

  def show ;end

  def new 
    @monster = Monster.new
  end

  def create 
    monster = Monster.create(monster_params)
    redirect_to monster_path(monster)
  end

  def edit;end

  def update 
    @monster.update(monster_params)
    redirect_to monster_path(@monster)
  end

  def destroy
    @monster.destroy
    redirect_to monsters_path
  end

  private 

  def set_monster 
    @monster = Monster.find_by_id(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:name, :scare_factor, :hunger)
  end

end