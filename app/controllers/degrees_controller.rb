class DegreesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_degree, only: [:show, :edit, :update, :destroy]

  # GET /degrees
  def index
    @degrees = Degree.order(end_date: :desc)
  end

  # GET /degrees/1
  def show
    @degree = Degree.find(params[:id])
  end

  # GET /degrees/new
  def new
    @degree = Degree.new
  end

  # GET /degrees/1/edit
  def edit
    @degree = Degree.find(params[:id])
  end

  # POST /degrees
  def create
    @degree = Degree.new(degree_params)
    if @degree.save
      redirect_to @degree, notice: 'Degree was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /degrees/1
  def update
    if @degree.update(degree_params)
      redirect_to @degree, notice: 'Degree was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /degrees/1
  def destroy
    @degree = Degree.find(params[:id])
    @degree.destroy
    respond_to do |format|
    format.html { redirect_to degrees_url, notice: 'Degree was successfully destroyed.' }
    format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree
      @degree = Degree.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def degree_params
      params.require(:degree).permit(:institution, :degree, :start_date, :end_date, :description)
    end
end
