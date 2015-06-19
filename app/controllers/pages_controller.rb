class PagesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]

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
    
    if params[:category]
      @records = Category.find_by(name: params[:category]).records
    end
    
  end

  def show
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
  end

  def new
    @record = Record.new
  end

  def create
     
       
    @record = Record.new(artist: params[:artist], title: params[:title], price: params[:price], description: params[:description])
      if @record.save
        Image.create(record_id: record.id, image: params[:image_1]) if :image_1 != ''
        Image.create(record_id: record.id, image: params[:image_2]) if :image_2 != ''
        flash[:info] = "Did it."
        redirect_to "/records/#{record.id}"
      else
        render '/pages/new'
      end
  
    

  end

  def edit
    
    record_id = params[:id]
    @record = Record.find_by(id: record_id)
    @image = @record.images
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

  def search
    search_term = params[:search]
    @records = Record.where("artist like ?", "%#{search_term}%")
    render :index
  end

  private

  def authenticate_admin!
    if user_signed_in? && !current_user.admin
      redirect_to '/'
    end
  end

end
