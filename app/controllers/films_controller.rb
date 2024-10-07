class FilmsController < ApplicationController
  def index
    @films = Film.all
    @draft_count = Film.where(status: :draft).count
  end

  def new
    @film = Film.new
    3.times { @film.directors.build }
  end

  def create
    @film = Film.new(title: params[:film][:title],
                     release_year: params[:film][:release_year],
                     sinopsis: params[:film][:sinopsis]
    )

  if params[:directors]
    params[:directors].each do |_, director_id|
      next if director_id.blank?
      director = Director.find(director_id)
      @film.directors << director unless @film.directors.include?(director)
    end
  end

  if params[:countries]
    params[:countries].each do |_, country_id|
      next if country_id.blank?
      country = Country.find(country_id)
      @film.countries << country unless @film.countries.include?(country)
    end
  end

  if params[:genres]
    params[:genres].each do |_, genre_id|
      next if genre_id.blank?
      genre = Genre.find(genre_id)
      @film.genres << genre unless @film.genres.include?(genre)
    end
  end

    if @film.save
      return redirect_to films_path
    end
    render :new
  end

  def show
    @film = Film.find(params[:id])
  end

  def edit
    @film = Film.find(params[:id])
  end

  def drafts
    @films = Film.all
  end

  def publish
    film = Film.find(params[:id])
    film.published!
    redirect_to drafts_films_path
  end
end
