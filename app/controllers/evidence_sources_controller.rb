class EvidenceSourcesController < ApplicationController
  before_action :set_evidence_source, only: [:show, :edit, :update, :destroy]

  # GET /evidence_sources
  # GET /evidence_sources.json
  def index
    @evidence_sources = EvidenceSource.all
  end

  # GET /evidence_sources/1
  # GET /evidence_sources/1.json
  def show
  end

  # GET /evidence_sources/new
  def new
    @evidence_source = EvidenceSource.new
  end

  # GET /evidence_sources/1/edit
  def edit
  end

  # POST /evidence_sources
  # POST /evidence_sources.json
  def create
    @evidence_source = EvidenceSource.new(evidence_source_params)

    respond_to do |format|
      if @evidence_source.save
        format.html { redirect_to @evidence_source, notice: 'Evidence source was successfully created.' }
        format.json { render :show, status: :created, location: @evidence_source }
      else
        format.html { render :new }
        format.json { render json: @evidence_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evidence_sources/1
  # PATCH/PUT /evidence_sources/1.json
  def update
    respond_to do |format|
      if @evidence_source.update(evidence_source_params)
        format.html { redirect_to @evidence_source, notice: 'Evidence source was successfully updated.' }
        format.json { render :show, status: :ok, location: @evidence_source }
      else
        format.html { render :edit }
        format.json { render json: @evidence_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evidence_sources/1
  # DELETE /evidence_sources/1.json
  def destroy
    @evidence_source.destroy
    respond_to do |format|
      format.html { redirect_to evidence_sources_url, notice: 'Evidence source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evidence_source
      @evidence_source = EvidenceSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evidence_source_params
      params.require(:evidence_source).permit(:bib_ref, :research_level, :insertTime)
    end
end
