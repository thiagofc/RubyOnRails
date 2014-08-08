class ColaboratorsController < ApplicationController
  #load_and_authorize_resource except: [:create, :]
  #load_and_authorize_resource :nested => :colaborator
  before_action :set_colaborator, only: [:show, :edit, :update, :destroy]

  # GET /colaborators
  # GET /colaborators.json
  def index
    authorize! :index, Colaborator
    @colaborators = Colaborator.accessible_by(current_ability)#Colaborator.all
  end

  # GET /colaborators/1
  # GET /colaborators/1.json
  def show
    authorize! :show, Colaborator
  end

  # GET /colaborators/new
  def new
    authorize! :new, Colaborator
    @colaborator = Colaborator.new
  end

  # GET /colaborators/1/edit
  def edit
    authorize! :edit, Colaborator
  end

  # POST /colaborators
  # POST /colaborators.json
  def create
    authorize! :create, Colaborator
    @colaborator = Colaborator.new(colaborator_params)

    respond_to do |format|
      if @colaborator.save
        format.html { redirect_to @colaborator, notice: 'Colaborator was successfully created.' }
        format.json { render :show, status: :created, location: @colaborator }
      else
        format.html { render :new }
        format.json { render json: @colaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaborators/1
  # PATCH/PUT /colaborators/1.json
  def update
    authorize! :update, Colaborator
    respond_to do |format|
      if @colaborator.update(colaborator_params)
        format.html { redirect_to @colaborator, notice: 'Colaborator was successfully updated.' }
        format.json { render :show, status: :ok, location: @colaborator }
      else
        format.html { render :edit }
        format.json { render json: @colaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaborators/1
  # DELETE /colaborators/1.json
  def destroy
    authorize! :destroy, Colaborator
    @colaborator.destroy
    respond_to do |format|
      format.html { redirect_to colaborators_url, notice: 'Colaborator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /show_colab_manager/1
   # GET /show_colab_manager/1.json
   def list_colaborators_manager
    authorize! :list_colaborators_manager, Colaborator
     colab = Colaborator.find(params[:id])
      if colab.manager_id == nil
        @manager = colab
      end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborator
      @colaborator = Colaborator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colaborator_params
      params.require(:colaborator).permit(:registration, :name, :email, :manager_id, :user_app_id)
    end
end
