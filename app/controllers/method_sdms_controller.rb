class MethodSdmsController < ApplicationController
  before_action :set_method_sdm, only: [:show, :edit, :update, :destroy]

  # GET /method_sdms
  # GET /method_sdms.json
  def index
    @method_sdms = MethodSdm.all
  end

  # GET /method_sdms/1
  # GET /method_sdms/1.json
  def show
  end

  # GET /method_sdms/new
  def new
    @method_sdm = MethodSdm.new
  end

  # GET /method_sdms/1/edit
  def edit
  end

  # POST /method_sdms
  # POST /method_sdms.json
  def create
    @method_sdm = MethodSdm.new(method_sdm_params)

    respond_to do |format|
      if @method_sdm.save
        format.html { redirect_to @method_sdm, notice: 'Method sdm was successfully created.' }
        format.json { render :show, status: :created, location: @method_sdm }
      else
        format.html { render :new }
        format.json { render json: @method_sdm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_sdms/1
  # PATCH/PUT /method_sdms/1.json
  def update
    respond_to do |format|
      if @method_sdm.update(method_sdm_params)
        format.html { redirect_to @method_sdm, notice: 'Method sdm was successfully updated.' }
        format.json { render :show, status: :ok, location: @method_sdm }
      else
        format.html { render :edit }
        format.json { render json: @method_sdm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_sdms/1
  # DELETE /method_sdms/1.json
  def destroy
    @method_sdm.destroy
    respond_to do |format|
      format.html { redirect_to method_sdms_url, notice: 'Method sdm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_sdm
      @method_sdm = MethodSdm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_sdm_params
      params.require(:method_sdm).permit(:name, :description, :insertTime)
    end
end
