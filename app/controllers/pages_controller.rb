class PagesController < ApplicationController

  def home
  end

  def index
    @records=Record.all
    random_rec = rand(1..9)
    if params[:sort_asc]
      @records = Record.order(params[:sort_asc])
    elsif params[:sort_desc]
      @records = Record.order(params[:sort_desc] => :desc)
    elsif params[:random]
      redirect_to "/records/#{random_rec}"
    elsif params[:discount]
      @records = Record.where('price < ?', 10 )
    end
    
  end

  def show
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
  end

  def new
  end

  def create
    record = Record.create(image: params[:image], artist: params[:artist], title: params[:title], price: params[:price], description: params[:description])
      flash[:info] = "Did it."
    redirect_to "/records/#{record.id}"
  end

  def edit
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
  end

  def update
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
    @record.update(image: params[:image], artist: params[:artist], title: params[:title], price: params[:price], description: params[:description])
    flash[:info] = "Updated yo."
    redirect_to "/records/#{record_id}"
  end

  def destroy
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
    @record.destroy
    flash[:warning] = "It's gone, man."
    redirect_to "/records"
  end

end
