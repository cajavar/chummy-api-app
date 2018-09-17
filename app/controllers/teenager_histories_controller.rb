class TeenagerHistoriesController < ApplicationController
  before_action :set_teenager_history, only: [:show, :edit, :update, :destroy]

  # GET /teenager_histories
  # GET /teenager_histories.json
  def index
    @teenager_histories = TeenagerHistory.all
  end

  # GET /teenager_histories/1
  # GET /teenager_histories/1.json
  def show
  end

  # GET /teenager_histories/new
  def new
    @teenager_history = TeenagerHistory.new
  end

  # GET /teenager_histories/1/edit
  def edit
  end

  # POST /teenager_histories
  # POST /teenager_histories.json
  def create
    @teenager_history = TeenagerHistory.new(teenager_history_params)

    respond_to do |format|
      if @teenager_history.save
        format.html { redirect_to @teenager_history, notice: 'Teenager history was successfully created.' }
        format.json { render :show, status: :created, location: @teenager_history }
      else
        format.html { render :new }
        format.json { render json: @teenager_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teenager_histories/1
  # PATCH/PUT /teenager_histories/1.json
  def update
    respond_to do |format|
      if @teenager_history.update(teenager_history_params)
        format.html { redirect_to @teenager_history, notice: 'Teenager history was successfully updated.' }
        format.json { render :show, status: :ok, location: @teenager_history }
      else
        format.html { render :edit }
        format.json { render json: @teenager_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teenager_histories/1
  # DELETE /teenager_histories/1.json
  def destroy
    @teenager_history.destroy
    respond_to do |format|
      format.html { redirect_to teenager_histories_url, notice: 'Teenager history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teenager_history
      @teenager_history = TeenagerHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teenager_history_params
      params.require(:teenager_history).permit(:id, :registry_date, :token)
    end
end
