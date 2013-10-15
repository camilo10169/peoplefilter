class PersonalInfosController < ApplicationController
  before_action :set_personal_info, only: [:show, :edit, :update, :destroy]

  # GET /personal_infos
  # GET /personal_infos.json
  def index
    @personal_infos = PersonalInfo.all
  end

  # GET /personal_infos/1
  # GET /personal_infos/1.json
  def show
  end

  # GET /personal_infos/new
  def new
    @personal_info = PersonalInfo.new
  end

  # GET /personal_infos/1/edit
  def edit
  end

  # POST /personal_infos
  # POST /personal_infos.json
  def create
    @personal_info = PersonalInfo.new(personal_info_params)

    respond_to do |format|
      if @personal_info.save
        format.html { redirect_to @personal_info, notice: 'Personal info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personal_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_infos/1
  # PATCH/PUT /personal_infos/1.json
  def update
    respond_to do |format|
      if @personal_info.update(personal_info_params)
        format.html { redirect_to @personal_info, notice: 'Personal info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_infos/1
  # DELETE /personal_infos/1.json
  def destroy
    @personal_info.destroy
    respond_to do |format|
      format.html { redirect_to personal_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_info
      @personal_info = PersonalInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_info_params
      params.require(:personal_info).permit(:gender, :marital_status, :country_birth, :dpto_birth, :city_birth, :job_profile, :years_experience, :wage_aspiration, :has_job, :native_language, :person_id)
    end
end
