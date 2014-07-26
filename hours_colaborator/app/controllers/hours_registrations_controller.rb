class HoursRegistrationsController < ApplicationController
  before_action :set_hours_registration, only: [:show, :edit, :update, :destroy]

  # GET /hours_registrations
  # GET /hours_registrations.json
  def index
    @hours_registrations = HoursRegistration.all
  end

  # GET /hours_registrations/1
  # GET /hours_registrations/1.json
  def show
  end

  # GET /hours_registrations/new
  def new
    @hours_registration = HoursRegistration.new
  end

  # GET /hours_registrations/1/edit
  def edit
  end

  # POST /hours_registrations
  # POST /hours_registrations.json
  def create
    @hours_registration = HoursRegistration.new(hours_registration_params)

    respond_to do |format|
      if @hours_registration.save
        format.html { redirect_to @hours_registration, notice: 'Hours registration was successfully created.' }
        format.json { render :show, status: :created, location: @hours_registration }
      else
        format.html { render :new }
        format.json { render json: @hours_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_registrations/1
  # PATCH/PUT /hours_registrations/1.json
  def update
    respond_to do |format|
      if @hours_registration.update(hours_registration_params)
        format.html { redirect_to @hours_registration, notice: 'Hours registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_registration }
      else
        format.html { render :edit }
        format.json { render json: @hours_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_registrations/1
  # DELETE /hours_registrations/1.json
  def destroy
    @hours_registration.destroy
    respond_to do |format|
      format.html { redirect_to hours_registrations_url, notice: 'Hours registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_registration
      @hours_registration = HoursRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_registration_params
      params.require(:hours_registration).permit(:date, :entrance1, :exit1, :entrance2, :exit2, :entrance3, :exit3)
    end
end
