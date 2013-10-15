class NoFormalEducationsController < ApplicationController
  before_action :set_no_formal_education, only: [:show, :edit, :update, :destroy]

  # GET /no_formal_educations
  # GET /no_formal_educations.json
  def index
    @no_formal_educations = NoFormalEducation.all
  end

  # GET /no_formal_educations/1
  # GET /no_formal_educations/1.json
  def show
  end

  # GET /no_formal_educations/new
  def new
    @no_formal_education = NoFormalEducation.new
  end

  # GET /no_formal_educations/1/edit
  def edit
  end

  # POST /no_formal_educations
  # POST /no_formal_educations.json
  def create
    @no_formal_education = NoFormalEducation.new(no_formal_education_params)

    respond_to do |format|
      if @no_formal_education.save
        format.html { redirect_to @no_formal_education, notice: 'No formal education was successfully created.' }
        format.json { render action: 'show', status: :created, location: @no_formal_education }
      else
        format.html { render action: 'new' }
        format.json { render json: @no_formal_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_formal_educations/1
  # PATCH/PUT /no_formal_educations/1.json
  def update
    respond_to do |format|
      if @no_formal_education.update(no_formal_education_params)
        format.html { redirect_to @no_formal_education, notice: 'No formal education was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @no_formal_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_formal_educations/1
  # DELETE /no_formal_educations/1.json
  def destroy
    @no_formal_education.destroy
    respond_to do |format|
      format.html { redirect_to no_formal_educations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_formal_education
      @no_formal_education = NoFormalEducation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_formal_education_params
      params.require(:no_formal_education).permit(:type_study, :country, :department, :city, :degree, :institute, :area, :time_intensity, :date_start, :date_end, :description, :validated, :person_id)
    end
end
