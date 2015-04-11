class SingleAppsController < ApplicationController
  before_action :set_single_app, only: [:show, :edit, :update, :destroy]

  # GET /single_apps
  # GET /single_apps.json
  def index
    @single_apps = SingleApp.all
  end

  # GET /single_apps/1
  # GET /single_apps/1.json
  def show
  end

  # GET /single_apps/new
  def new
    @single_app = SingleApp.new
  end

  # GET /single_apps/1/edit
  def edit
  end

  # POST /single_apps
  # POST /single_apps.json
  def create
    @single_app = SingleApp.new(single_app_params)

    respond_to do |format|
      if @single_app.save
        format.html { redirect_to @single_app, notice: 'Single app was successfully created.' }
        format.json { render :show, status: :created, location: @single_app }
      else
        format.html { render :new }
        format.json { render json: @single_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_apps/1
  # PATCH/PUT /single_apps/1.json
  def update
    respond_to do |format|
      if @single_app.update(single_app_params)
        format.html { redirect_to @single_app, notice: 'Single app was successfully updated.' }
        format.json { render :show, status: :ok, location: @single_app }
      else
        format.html { render :edit }
        format.json { render json: @single_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_apps/1
  # DELETE /single_apps/1.json
  def destroy
    @single_app.destroy
    respond_to do |format|
      format.html { redirect_to single_apps_url, notice: 'Single app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_app
      @single_app = SingleApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def single_app_params
      params.require(:single_app).permit(:name, :description, :image, :price, :url)
    end
end
