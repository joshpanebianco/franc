class ShortlistsController < ApplicationController
  before_action :set_shortlist, only: [:show, :edit, :update, :destroy]

  # GET /shortlists
  # GET /shortlists.json
  def index
    @shortlists = Shortlist.all
  end

  # GET /shortlists/1
  # GET /shortlists/1.json
  def show
  end

  # GET /shortlists/new
  def new
    @shortlist = Shortlist.new
  end

  # GET /shortlists/1/edit
  def edit
  end

  # POST /shortlists
  # POST /shortlists.json
  def create
    @shortlist = Shortlist.new(shortlist_params)

    respond_to do |format|
      if @shortlist.save
        format.html { redirect_to @shortlist, notice: 'Shortlist was successfully created.' }
        format.json { render :show, status: :created, location: @shortlist }
      else
        format.html { render :new }
        format.json { render json: @shortlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shortlists/1
  # PATCH/PUT /shortlists/1.json
  def update
    respond_to do |format|
      if @shortlist.update(shortlist_params)
        format.html { redirect_to @shortlist, notice: 'Shortlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @shortlist }
      else
        format.html { render :edit }
        format.json { render json: @shortlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shortlists/1
  # DELETE /shortlists/1.json
  def destroy
    @shortlist.destroy
    respond_to do |format|
      format.html { redirect_to shortlists_url, notice: 'Shortlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortlist
      @shortlist = Shortlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shortlist_params
      params.require(:shortlist).permit(:user_id, :post_id, :shortlist)
    end
end
