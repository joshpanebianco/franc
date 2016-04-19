class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    # General Search
    if params[:search_term].present? && !params[:search_term].blank?
      search_term = params[:search_term].downcase
      @jobs = Job.where('lower(company) LIKE ? OR lower(description) LIKE ? OR lower(requirements) LIKE ?', "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    else

      # Company Search
      if params[:search_company].present? && !params[:search_company].blank?
        search_company = params[:search_company].downcase
        @jobs = Job.where('lower(company) LIKE ?', "%#{search_company}%")
      else

        # Description Search
        if params[:search_description].present? && !params[:search_description].blank?
          search_description = params[:search_description].downcase
          @jobs = Job.where('lower(description) LIKE ?', "%#{search_description}%")
        else
          @jobs = Job.all.order('created_at DESC')
        end

  end
end
end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:company, :description, :location, :requirements, :remuneration, :user_id, :position, :contract)
    end
  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end

end
