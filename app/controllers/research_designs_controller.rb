class ResearchDesignsController < ApplicationController
  before_action :set_research_design, only: [:show, :edit, :update, :destroy]

  # GET /research_designs
  # GET /research_designs.json
  def index
    @research_designs = ResearchDesign.all
  end

  # GET /research_designs/1
  # GET /research_designs/1.json
  def show
  end

  # GET /research_designs/new
  def new
    @research_design = ResearchDesign.new
  end

  # GET /research_designs/1/edit
  def edit
  end

  # POST /research_designs
  # POST /research_designs.json
  def create
    @research_design = ResearchDesign.new(research_design_params)

    respond_to do |format|
      if @research_design.save
        format.html { redirect_to @research_design, notice: 'Research design was successfully created.' }
        format.json { render :show, status: :created, location: @research_design }
      else
        format.html { render :new }
        format.json { render json: @research_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_designs/1
  # PATCH/PUT /research_designs/1.json
  def update
    respond_to do |format|
      if @research_design.update(research_design_params)
        format.html { redirect_to @research_design, notice: 'Research design was successfully updated.' }
        format.json { render :show, status: :ok, location: @research_design }
      else
        format.html { render :edit }
        format.json { render json: @research_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_designs/1
  # DELETE /research_designs/1.json
  def destroy
    @research_design.destroy
    respond_to do |format|
      format.html { redirect_to research_designs_url, notice: 'Research design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_design
      @research_design = ResearchDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_design_params
      params.require(:research_design).permit(:question, :method, :metrics, :participants, :insertTime)
    end
end
