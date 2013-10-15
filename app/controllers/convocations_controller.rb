class ConvocationsController < ApplicationController
  before_action :set_convocation, only: [:show, :edit, :update, :destroy]

  # GET /convocations
  # GET /convocations.json
  def index
    @convocations = Convocation.all
  end

  # GET /convocations/1
  # GET /convocations/1.json
  def show
  end

  # GET /convocations/new
  def new
    @convocation = Convocation.new
  end

  # GET /convocations/1/edit
  def edit
  end

  # POST /convocations
  # POST /convocations.json
  def create
    @convocation = Convocation.new(convocation_params)

    respond_to do |format|
      if @convocation.save
        format.html { redirect_to @convocation, notice: 'Convocation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @convocation }
      else
        format.html { render action: 'new' }
        format.json { render json: @convocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convocations/1
  # PATCH/PUT /convocations/1.json
  def update
    respond_to do |format|
      if @convocation.update(convocation_params)
        format.html { redirect_to @convocation, notice: 'Convocation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @convocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convocations/1
  # DELETE /convocations/1.json
  def destroy
    @convocation.destroy
    respond_to do |format|
      format.html { redirect_to convocations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convocation
      @convocation = Convocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convocation_params
      params.require(:convocation).permit(:position, :amount_vacancies, :hierarchy, :city, :department, :area, :subarea, :gender, :min_age, :max_age, :education_level, :education_state, :language, :description, :company_id)
    end
end
