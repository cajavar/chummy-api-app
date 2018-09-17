class DenounceTypesController < ApplicationController
  before_action :set_denounce_type, only: [:show, :edit, :update, :destroy]

  # GET /denounce_types
  # GET /denounce_types.json
  def index
    @denounce_types = DenounceType.all
  end

  # GET /denounce_types/1
  # GET /denounce_types/1.json
  def show
  end

  # GET /denounce_types/new
  def new
    @denounce_type = DenounceType.new
  end

  # GET /denounce_types/1/edit
  def edit
  end

  # POST /denounce_types
  # POST /denounce_types.json
  def create
    @denounce_type = DenounceType.new(denounce_type_params)

    respond_to do |format|
      if @denounce_type.save
        format.html { redirect_to @denounce_type, notice: 'Denounce type was successfully created.' }
        format.json { render :show, status: :created, location: @denounce_type }
      else
        format.html { render :new }
        format.json { render json: @denounce_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denounce_types/1
  # PATCH/PUT /denounce_types/1.json
  def update
    respond_to do |format|
      if @denounce_type.update(denounce_type_params)
        format.html { redirect_to @denounce_type, notice: 'Denounce type was successfully updated.' }
        format.json { render :show, status: :ok, location: @denounce_type }
      else
        format.html { render :edit }
        format.json { render json: @denounce_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denounce_types/1
  # DELETE /denounce_types/1.json
  def destroy
    @denounce_type.destroy
    respond_to do |format|
      format.html { redirect_to denounce_types_url, notice: 'Denounce type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denounce_type
      @denounce_type = DenounceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def denounce_type_params
      params.require(:denounce_type).permit(:id, :title)
    end
end
