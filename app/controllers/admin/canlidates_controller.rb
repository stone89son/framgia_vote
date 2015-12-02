class Admin::CanlidatesController < ApplicationController

  layout "admin_layout"
  http_basic_authenticate_with name: "Framgia",
    password: "123@123a"
  before_action :set_canlidate, only: [:show, :edit, :update, :destroy]

  # GET /admin/canlidates
  # GET /admin/canlidates.json
  def index
    @canlidates = Canlidate.all
  end

  # GET /admin/canlidates/1
  # GET /admin/canlidates/1.json
  def show
  end

  # GET /admin/canlidates/new
  def new
    @canlidate = Canlidate.new
  end

  # GET /admin/canlidates/1/edit
  def edit
  end

  # POST /admin/canlidates
  # POST /admin/canlidates.json
  def create
    @canlidate = Canlidate.new(canlidate_params)

    respond_to do |format|
      if @canlidate.save
        format.html { redirect_to admin_canlidate_path(@canlidate), notice: 'Canlidate was successfully created.' }
        format.json { render :show, status: :created, location: @canlidate }
      else
        format.html { render :new }
        format.json { render json: @canlidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/canlidates/1
  # PATCH/PUT /admin/canlidates/1.json
  def update
    respond_to do |format|
      if @canlidate.update(canlidate_params)
        format.html { redirect_to admin_canlidate_path(@canlidate), notice: 'Canlidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @canlidate }
      else
        format.html { render :edit }
        format.json { render json: @canlidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/canlidates/1
  # DELETE /admin/canlidates/1.json
  def destroy
    @canlidate.destroy
    respond_to do |format|
      format.html { redirect_to admin_canlidates_url, notice: 'Canlidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canlidate
      @canlidate = Canlidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canlidate_params
      params.require(:canlidate).permit(:name, :description, :banner, :award_id)
    end
end
