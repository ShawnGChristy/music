class ArtisController < ApplicationController
  before_action :set_arti, only: [:show, :edit, :update, :destroy]

  # GET /artis
  # GET /artis.json
  def index
    @artis = Arti.all
  end

  # GET /artis/1
  # GET /artis/1.json
  def show
  end

  # GET /artis/new
  def new
    @arti = Arti.new
  end

  # GET /artis/1/edit
  def edit
  end

  # POST /artis
  # POST /artis.json
  def create
    @arti = Arti.new(arti_params)

    respond_to do |format|
      if @arti.save
        format.html { redirect_to @arti, notice: 'Arti was successfully created.' }
        format.json { render :show, status: :created, location: @arti }
      else
        format.html { render :new }
        format.json { render json: @arti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artis/1
  # PATCH/PUT /artis/1.json
  def update
    respond_to do |format|
      if @arti.update(arti_params)
        format.html { redirect_to @arti, notice: 'Arti was successfully updated.' }
        format.json { render :show, status: :ok, location: @arti }
      else
        format.html { render :edit }
        format.json { render json: @arti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artis/1
  # DELETE /artis/1.json
  def destroy
    @arti.destroy
    respond_to do |format|
      format.html { redirect_to artis_url, notice: 'Arti was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arti
      @arti = Arti.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arti_params
      params.require(:arti).permit(:name)
    end
end
