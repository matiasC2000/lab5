class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new(monster_params)
    @monster.save
  end

  def monster_params
    params.require(:monster).permit(:name, :description)
  end

end
