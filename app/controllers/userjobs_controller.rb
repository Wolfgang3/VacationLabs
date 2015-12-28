class UserjobsController < ApplicationController
  before_action :set_userjob, only: [:show, :edit, :update, :destroy]

  # GET /userjobs
  # GET /userjobs.json
  def index
  @alluserjobs = Userjob.all
  @alljobs = Job.all

  end

  # GET /userjobs/1
  # GET /userjobs/1.json
  def show
 
  end

  # GET /userjobs/new
  def new
    @userjob = Userjob.new

  end

  # GET /userjobs/1/edit
  def edit
  end

  # POST /userjobs
  # POST /userjobs.json
  def create
    @userjob = Userjob.new()
    @userjob.jobid=params[:post_id];
     @userjob.userid=current_user.id 



    respond_to do |format|
      if @userjob.save
        format.html { redirect_to jobs_path, notice: 'Job applied  successfully.' }
        format.json { render :show, status: :created, location: jobs_path }
      else
        format.html { render :new }
        format.json { render json: @userjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userjobs/1
  # PATCH/PUT /userjobs/1.json
  def update
    respond_to do |format|
      if @userjob.update(userjob_params)
        format.html { redirect_to @userjob, notice: 'Userjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @userjob }
      else
        format.html { render :edit }
        format.json { render json: @userjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userjobs/1
  # DELETE /userjobs/1.json
  def destroy
    @userjob.destroy
    respond_to do |format|
      format.html { redirect_to userjobs_url, notice: 'Userjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userjob
      @userjob = Userjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userjob_params
      params.require(:userjob).permit(:userid,:jobid)
    end
end
