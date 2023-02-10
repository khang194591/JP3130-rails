class MovieReviewsController < ApplicationController
  before_action :set_movie_review, only: %i[ show edit update destroy ]

  # GET /movie_reviews or /movie_reviews.json
  def index
    @movie_reviews = MovieReview.all
  end

  # GET /movie_reviews/1 or /movie_reviews/1.json
  def show
  end

  # GET /movie_reviews/new
  def new
    @movie_review = MovieReview.new
  end

  # GET /movie_reviews/1/edit
  def edit
  end

  # POST /movie_reviews or /movie_reviews.json
  def create
    @movie_review = MovieReview.new(movie_review_params)

    respond_to do |format|
      if @movie_review.save
        format.html { redirect_to movie_review_url(@movie_review), notice: "Movie review was successfully created." }
        format.json { render :show, status: :created, location: @movie_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_reviews/1 or /movie_reviews/1.json
  def update
    respond_to do |format|
      if @movie_review.update(movie_review_params)
        format.html { redirect_to movie_review_url(@movie_review), notice: "Movie review was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_reviews/1 or /movie_reviews/1.json
  def destroy
    @movie_review.destroy

    respond_to do |format|
      format.html { redirect_to movie_reviews_url, notice: "Movie review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_review
      @movie_review = MovieReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_review_params
      params.require(:movie_review).permit(:user_id, :movie_id, :review)
    end
end
