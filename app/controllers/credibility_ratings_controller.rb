class CredibilityRatingsController < ApplicationController
  before_action :set_credibility_rating, only: [:show, :edit, :update, :destroy]

  # GET /credibility_ratings
  # GET /credibility_ratings.json
  def index
    @credibility_ratings = CredibilityRating.all
  end

  # GET /credibility_ratings/1
  # GET /credibility_ratings/1.json
  def show
  end

  # GET /credibility_ratings/new
  def new
    @credibility_rating = CredibilityRating.new
  end

  # GET /credibility_ratings/1/edit
  def edit
  end

  # POST /credibility_ratings
  # POST /credibility_ratings.json
  def create
    @credibility_rating = CredibilityRating.new(credibility_rating_params)

    respond_to do |format|
      if @credibility_rating.save
        format.html { redirect_to @credibility_rating, notice: 'Credibility rating was successfully created.' }
        format.json { render :show, status: :created, location: @credibility_rating }
      else
        format.html { render :new }
        format.json { render json: @credibility_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credibility_ratings/1
  # PATCH/PUT /credibility_ratings/1.json
  def update
    respond_to do |format|
      if @credibility_rating.update(credibility_rating_params)
        format.html { redirect_to @credibility_rating, notice: 'Credibility rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @credibility_rating }
      else
        format.html { render :edit }
        format.json { render json: @credibility_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credibility_ratings/1
  # DELETE /credibility_ratings/1.json
  def destroy
    @credibility_rating.destroy
    respond_to do |format|
      format.html { redirect_to credibility_ratings_url, notice: 'Credibility rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credibility_rating
      @credibility_rating = CredibilityRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credibility_rating_params
      params.require(:credibility_rating).permit(:credibility_level, :reason, :rater)
    end
end
