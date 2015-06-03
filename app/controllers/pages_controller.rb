class PagesController < ApplicationController

  def home
  end

  def index
    @records=Record.all
    
  end

  def show
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
  end

  def new
  end

  def create
    Record.create(image: params[:image], artist: params[:artist], title: params[:title], price: params[:price], description: params[:description])
    redirect_to "/records"
  end

  def edit
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
  end

  def update
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
    @record.update(image: params[:image], artist: params[:artist], title: params[:title], price: params[:price], description: params[:description])
    redirect_to "/records/#{record_id}"
  end

  def destroy
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
    @record.destroy
    redirect_to "/records"
  end

end
