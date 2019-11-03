class StateCountriesController < ApplicationController
  before_action :set_state_country, only: [:show, :edit, :update, :destroy]

  # GET /state_countries
  # GET /state_countries.json
  def index
    @state_countries = StateCountry.all
  end

  # GET /state_countries/1
  # GET /state_countries/1.json
  def show
  end

  # GET /state_countries/new
  def new
    @state_country = StateCountry.new
  end

  # GET /state_countries/1/edit
  def edit
  end

  # POST /state_countries
  # POST /state_countries.json
  def create
    @state_country = StateCountry.new(state_country_params)

    respond_to do |format|
      if @state_country.save
        format.html { redirect_to @state_country, notice: 'State country was successfully created.' }
        format.json { render :show, status: :created, location: @state_country }
      else
        format.html { render :new }
        format.json { render json: @state_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_countries/1
  # PATCH/PUT /state_countries/1.json
  def update
    respond_to do |format|
      if @state_country.update(state_country_params)
        format.html { redirect_to @state_country, notice: 'State country was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_country }
      else
        format.html { render :edit }
        format.json { render json: @state_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_countries/1
  # DELETE /state_countries/1.json
  def destroy
    @state_country.destroy
    respond_to do |format|
      format.html { redirect_to state_countries_url, notice: 'State country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_country
      @state_country = StateCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_country_params
      params.require(:state_country).permit(:state, :country)
    end
end
