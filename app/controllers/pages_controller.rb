class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profil

  end

  def children
    @children = Family.find(current_user.family_id).users
  end

  def wish_validate
    @children = Family.find(current_user.family_id).users
  end

  def read_validate
    @children = Family.find(current_user.family_id).users
  end


end
