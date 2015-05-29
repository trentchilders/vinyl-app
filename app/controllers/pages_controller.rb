class PagesController < ApplicationController

  def home
  end

  def all
    @records=Record.all
  end

end
