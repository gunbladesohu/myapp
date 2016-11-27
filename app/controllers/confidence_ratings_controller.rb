class ConfidenceRatingsController < ApplicationController
  before_action :set_confidence_rating, only: [:show, :edit, :update, :destroy]

  # GET /confidence_ratings
  # GET /confidence_ratings.json
  def index
    @confidence_ratings = ConfidenceRating.all
  end

  # GET /confidence_ratings/1
  # GET /confidence_ratings/1.json
  def show
  end

  # GET /confidence_ratings/new
  def new
    @confidence_rating = ConfidenceRating.new
  end

  # GET /confidence_ratings/1/edit
  def edit
  end

  # POST /confidence_ratings
  # POST /confidence_ratings.json
  def create
    @confidence_rating = ConfidenceRating.new(confidence_rating_params)

    respond_to do |format|
      if @confidence_rating.save
        format.html { redirect_to @confidence_rating, notice: 'Confidence rating was successfully created.' }
        format.json { render :show, status: :created, location: @confidence_rating }
      else
        format.html { render :new }
        format.json { render json: @confidence_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confidence_ratings/1
  # PATCH/PUT /confidence_ratings/1.json
  def update
    respond_to do |format|
      if @confidence_rating.update(confidence_rating_params)
        format.html { redirect_to @confidence_rating, notice: 'Confidence rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @confidence_rating }
      else
        format.html { render :edit }
        format.json { render json: @confidence_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confidence_ratings/1
  # DELETE /confidence_ratings/1.json
  def destroy
    @confidence_rating.destroy
    respond_to do |format|
      format.html { redirect_to confidence_ratings_url, notice: 'Confidence rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confidence_rating
      @confidence_rating = ConfidenceRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confidence_rating_params
      params.require(:confidence_rating).permit(:confidence_level, :reason, :rater, :insertTime)
    end
end
