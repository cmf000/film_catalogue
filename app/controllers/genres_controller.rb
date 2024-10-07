class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])

    if @genre.save
      return redirect_to genres_path
    end

    render :new
  end

  def show
    @genre = Genre.find(params[:id])
    @films = @genre.films
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:director][:id])
    @genre.name = params[:director][:name]

    if @genre.save
      return redirect_to genres_path
    end
    render :new
  end
end
