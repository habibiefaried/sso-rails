class PeransController < ApplicationController
  before_action :set_peran, only: [:show, :edit, :update, :destroy]

  # GET /perans
  # GET /perans.json
  def index
    @perans = Peran.all
  end

  # GET /perans/1
  # GET /perans/1.json
  def show
  end

  # GET /perans/new
  def new
    @peran = Peran.new
  end

  # GET /perans/1/edit
  def edit
  end

  # POST /perans
  # POST /perans.json
  def create
    @peran = Peran.new(peran_params)

    respond_to do |format|
      if @peran.save
        format.html { redirect_to @peran, notice: 'Peran was successfully created.' }
        format.json { render :show, status: :created, location: @peran }
      else
        format.html { render :new }
        format.json { render json: @peran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perans/1
  # PATCH/PUT /perans/1.json
  def update
    respond_to do |format|
      if @peran.update(peran_params)
        format.html { redirect_to @peran, notice: 'Peran was successfully updated.' }
        format.json { render :show, status: :ok, location: @peran }
      else
        format.html { render :edit }
        format.json { render json: @peran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perans/1
  # DELETE /perans/1.json
  def destroy
    @peran.destroy
    respond_to do |format|
      format.html { redirect_to perans_url, notice: 'Peran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peran
      @peran = Peran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peran_params
      params.require(:peran).permit(:peran, :jabatan)
    end
end
