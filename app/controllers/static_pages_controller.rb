class StaticPagesController < ApplicationController
  
  def index
  end
  
  def privacy
  end
  
  def squad
    @squad = Squad.all
  end
  
  def careers
  end
  
  def alumni
    @alumni = Alumni.all
  end
  
end
