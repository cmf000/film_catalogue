class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @directors= Director.new
  end

  def create
    @directors = Director.new(name: params[:director][:name])

    if @directors.save
      return redirect_to directors_path
    end
    render :new
  end

  def show
    @director = Director.find(params[:id])
    @films = @director.films
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    Rails.logger.info(params.inspect)
    @director = Director.find(params[:id])
    @director.name = params[:director][:name]

    if @director.save
      return redirect_to directors_path
    end
    render :edit
  end
end
