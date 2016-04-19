class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  # GET /jobs
  # GET /jobs.json
  def index

      @jobs = Job.keyword_search(params[:search_term])
                 .company_name(params[:search_company])
                 .description(params[:search_description])

  .salary

      @salary_range_min = [['--', ''],['0k', 0], ['10k', 10000], ['20k', 20000], ['30k', 30000], ['40k', 40000], ['50k', 500000], ['60k', 60000], ['70k', 70000], ['80k', 80000], ['90k', 90000], ['100k', 100000], ['150k', 150000]]

   @salary_range_max = [['--', ''],['30k', 30000], ['40k', 40000], ['50k', 500000], ['60k', 60000], ['70k', 70000], ['80k', 80000], ['90k', 90000], ['100k', 100000], ['120k', 120000], ['130k', 130000], ['140k', 140000], ['150k', 150000], ['200k', 200000], ['250k', 250000]]



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
end
