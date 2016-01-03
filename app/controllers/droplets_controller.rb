class DropletsController < ApplicationController
  before_action :set_droplet, only: [:show, :edit, :update, :destroy]

  # GET /droplets
  # GET /droplets.json
  def index
    @droplets = Droplet.all
  end

  # GET /droplets/1
  # GET /droplets/1.json
  def show
  end

  # GET /droplets/new
  def new
    @droplet = Droplet.new
  end

  # GET /droplets/1/edit
  def edit
  end

  # POST /droplets
  # POST /droplets.json
  def create
    @droplet = Droplet.new(droplet_params)

    respond_to do |format|
      if @droplet.save
        format.html { redirect_to @droplet, notice: 'Droplet was successfully created.' }
        format.json { render :show, status: :created, location: @droplet }
      else
        format.html { render :new }
        format.json { render json: @droplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /droplets/1
  # PATCH/PUT /droplets/1.json
  def update
    respond_to do |format|
      if @droplet.update(droplet_params)
        format.html { redirect_to @droplet, notice: 'Droplet was successfully updated.' }
        format.json { render :show, status: :ok, location: @droplet }
      else
        format.html { render :edit }
        format.json { render json: @droplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /droplets/1
  # DELETE /droplets/1.json
  def destroy
    @droplet.destroy
    respond_to do |format|
      format.html { redirect_to droplets_url, notice: 'Droplet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_droplet
      @droplet = Droplet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def droplet_params
      params.require(:droplet).permit(:description)
    end
end
